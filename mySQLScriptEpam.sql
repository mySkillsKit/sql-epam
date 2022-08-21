SELECT `b_name`,
		`a_name`,
		`g_name`
FROM `books`
		JOIN `m2m_books_authors` USING(`b_id`)
		JOIN `authors` USING(`a_id`)
		JOIN `m2m_books_genres` USING(`b_id`)
		JOIN `genres` USING(`g_id`);
	
		
SELECT `b_name`,
		`s_id`,
		`s_name`,
		`sb_start`,
		`sb_finish`
		
FROM  `books`
	JOIN `subscriptions`
	ON `b_id` = `sb_book`
	JOIN `subscribers`
	ON `sb_subscriber` = `s_id`;

/*
 * Write SQL queries to show all information about all:
 * a) authors;
 * b) genres.
 */

SELECT *
FROM `authors`

SELECT * 
FROM `books` 

SELECT *
FROM `genres`

SELECT * 
FROM subscribers s 

SELECT * 
FROM `subscriptions`


SELECT * 
FROM m2m_books_authors mmba 

SELECT * 
FROM m2m_books_genres mmbg 



SELECT DISTINCT `sb_subscriber`
FROM `subscriptions`

/*
 * the list of all subsvribers along 
 * with information of their names count
 */

SELECT `s_name`,
		COUNT(*) AS `people_count`
FROM `subscribers`
GROUP BY `s_name`


/*
 * Write SQL queries to show:
 * a) all ids (without duplication) 
 * of all books ever taken by subscribers;
 * 
 * b) all books along with 
 * count of times each book was taken 
 * by a subscriber. 
 */


SELECT DISTINCT `b_id`,
              `b_name`
FROM  `books`
	JOIN `subscriptions`
	ON `b_id` = `sb_book`
	
	
SELECT `sb_book`,
		COUNT(*) AS `book_count`	
FROM `subscriptions` 
GROUP BY `sb_book`


/*
 * how many books are the int the library
 */

SELECT COUNT(*)  AS `total_books`
FROM `books`
 




/*
 * how many copies of books are taken by subscribers
 */

SELECT COUNT(`sb_book`) AS `in_use`
FROM `subscriptions`
WHERE `sb_is_active` = 'Y'

/*
 * how many different books are taken by subcribers
 */

SELECT COUNT(DISTINCT `sb_book`) AS `in_use`
FROM `subscriptions`
WHERE `sb_is_active` = 'Y'



/*
 * Write SQL queries to show:
a) how many times subscribers have taken books;
b) how many subscribers have taken books.
 */

SELECT COUNT(`sb_subscriber`) AS `times_take_book`
FROM `subscriptions`
WHERE `sb_is_active` = 'Y'

SELECT COUNT(DISTINCT `sb_subscriber`) AS `times_take_book`
FROM `subscriptions`
WHERE `sb_is_active` = 'Y'

/*
 * total, min, max, average copies of book quantities
 */


SELECT SUM(`b_quantity`) AS `sum`,
		MIN(`b_quantity`) AS `min`,
		MAX(`b_quantity`) AS `max`,
		AVG(`b_quantity`) AS `avg`
FROM `books`


/*
 * Write an SQL query to show the first and the last dates when 
 * a book was taken by a subscriber.
 */

SELECT MIN(`sb_start`) AS `first_date`,
		MAX(`sb_finish`) AS `last_date`
FROM `subscriptions`


/*
 * all books ordered by issuing years(ascending)
 */

SELECT `b_name`,
		`b_year`
FROM `books`
ORDER BY `b_year` ASC 

/*
 * all books ordered by issuing years(descending)
 */

SELECT `b_name`,
		`b_year`
FROM `books`
ORDER BY `b_year` DESC 


/*
 * all books ordered by and NULLs
 */
SELECT `b_name`,
		`b_year`
FROM `books`
ORDER BY `b_year` IS NULL DESC,
		 `b_year` DESC


/*
 * Write an SQL query to show the all authors 
 * ordered by their names descending (i.e., "Z -> A").
 */

SELECT `a_name`
FROM `authors`
ORDER BY `a_name` DESC 


/*
 * all books that are:
 * issued in 1990-2000 years range
 * represented with at least 3 copies
 */

-- variant 1 between
SELECT `b_name`,
		`b_year`,
		`b_quantity`
FROM `books` 
WHERE `b_year` BETWEEN 1990 AND 2000
      AND `b_quantity` >=3


-- variant 2 double inequality
SELECT `b_name`,
		`b_year`,
		`b_quantity`
FROM `books` 
WHERE `b_year` >= 1990
	  AND `b_year` <= 2000
      AND `b_quantity` >= 3     
         

      
      /*
       * all subscribtions that occurred in summer of 2012
       */
      
   SELECT `sb_id`,
   		`sb_start`
   FROM `subscriptions`
   WHERE `sb_start` >= '2012-06-01'
   		AND `sb_start` < '2012-09-01'
      
      

/*
 * Write SQL queries to show:
a) books that have the number of their copies 
less than average number of all books copies;
b) ids and dates of all subscriptions occurred
 during the first year of the library work 
 (i.e., up to Dec 31st of the year 
 when the first subscription had happened).
 */

SELECT `b_name`,
       `b_quantity`
FROM `books` 
WHERE `b_quantity` < (SELECT AVG(`b_quantity`)
						FROM `books`)
ORDER BY `b_quantity` ASC 



SELECT `sb_id`,
		`sb_subscriber`,
		`sb_start`
FROM `subscriptions`
WHERE  `sb_start` >= '2011-01-12'  
		AND `sb_start` < '2011-12-31'


		
	
-- one(any!) book the number of copies of which is max 
-- (is equals to the max for all books)
	
	SELECT `b_name`,
	      `b_quantity`
	FROM `books` 
	ORDER BY `b_quantity` DESC 
	LIMIT 1
		
-- all books book the number of copies of which is max
		-- (and is the same for all these books)
 
	-- variant 1 using MAX
 
	SELECT `b_name`,
			`b_quantity`
	FROM `books`
	WHERE `b_quantity` = (SELECT MAX(`b_quantity`)
						FROM `books`)
	
	-- variant 2 using RANK (starting with MySQL 8)
						
	SELECT `b_name`,
		`b_quantity`
	FROM (SELECT `b_name`,
				`b_quantity`,
				RANK() OVER (ORDER BY `b_quantity` DESC) AS `rn` 
			FROM `books`) AS `temporary_data`
	WHERE `rn` = 1
	
	
		-- book (if any) which has more copies than any other book
			
	-- variant 1	using ALL with subquery
	
	SELECT `b_name`,
		`b_quantity`
	FROM `books` AS `ext`
	WHERE `b_quantity` > ALL (SELECT `b_quantity` 
							FROM `books` AS `int`
							WHERE `ext`.b_id != `int`.b_id)
							
 -- variant 2 suing Common Table expression and RANK 
							
	WITH `ranked`
			AS (SELECT `b_name`,
						`b_quantity`,
						RANK() 
						 OVER (
						 ORDER BY `b_quantity` DESC) AS `rank`
				FROM `books`),
			`counted`
			AS ( SELECT `rank`,
						COUNT(*) AS `competitors` 
				 FROM `ranked`
				 GROUP BY `rank`)
	SELECT `b_name`,
		`b_quantity`
	FROM `ranked` 
		 JOIN `counted`
		 USING (`rank`)
	WHERE `counted`.`rank` = 1
	  AND `counted`.`competitors` = 1
	
	

		/*
		 * Write SQL queries to show:
a) the identifier of one (any) subscriber 
who has taken the most books from the library;
b) the identifiers of all subscribers 
who has taken the most books from the library;
c) the identifier of the "champion subscriber" 
who has taken more books from the library than any other subscriber.

		 */


	SELECT `sb_id`,
	      `sb_book`
	FROM `subscriptions` 
	ORDER BY `sb_book` DESC 
	LIMIT 1

	
	SELECT `sb_id`,
	      `sb_book`
	FROM `subscriptions` 
	WHERE `sb_book` = (SELECT MAX(`sb_book`)
						FROM  `subscriptions`)
	

	SELECT `sb_id`,
	      `sb_book`
	FROM `subscriptions` AS `ext`
	WHERE `sb_book` > ALL (SELECT `sb_book` 
							FROM `subscriptions` AS `int`
							WHERE `ext`.sb_id != `int`.sb_id)
							
							
							
							


	