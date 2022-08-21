INSERT ALL
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (1, N'Eugene Onegin', 1985, 2)
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (2, N'The Fishermen and the Golden Fish', 1990, 3)
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (3, N'Foundation and Empire', 2000, 5)
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (4, N'Programming Psychology', 1998, 1)
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (5, N'The C++ Programming Language', 1996, 3)
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (6, N'Course of Theoretical Physics', 1981, 12)
  INTO "books" ("b_id", "b_name", "b_year", "b_quantity") VALUES (7, N'The Art of Computer Programming', 1993, 7)
SELECT 1 FROM "DUAL";

INSERT ALL
 INTO "authors" ("a_id", "a_name") VALUES (1, N'Donald Knuth')
 INTO "authors" ("a_id", "a_name") VALUES (2, N'Isaac Asimov')
 INTO "authors" ("a_id", "a_name") VALUES (3, N'Dale Carnegie')
 INTO "authors" ("a_id", "a_name") VALUES (4, N'Lev Landau')
 INTO "authors" ("a_id", "a_name") VALUES (5, N'Evgeny Lifshitz')
 INTO "authors" ("a_id", "a_name") VALUES (6, N'Bjarne Stroustrup')
 INTO "authors" ("a_id", "a_name") VALUES (7, N'Alexander Pushkin')
SELECT 1 FROM "DUAL";

INSERT ALL
 INTO "genres" ("g_id", "g_name") VALUES (1, N'Poetry')
 INTO "genres" ("g_id", "g_name") VALUES (2, N'Programming')
 INTO "genres" ("g_id", "g_name") VALUES (3, N'Psychology')
 INTO "genres" ("g_id", "g_name") VALUES (4, N'Science')
 INTO "genres" ("g_id", "g_name") VALUES (5, N'Classic')
 INTO "genres" ("g_id", "g_name") VALUES (6, N'Science Fiction')
SELECT 1 FROM "DUAL";

INSERT ALL
 INTO "subscribers" ("s_id", "s_name") VALUES (1, N'Ivanov I.I.')
 INTO "subscribers" ("s_id", "s_name") VALUES (2, N'Petrov P.P.')
 INTO "subscribers" ("s_id", "s_name") VALUES (3, N'Sidorov S.S.')
 INTO "subscribers" ("s_id", "s_name") VALUES (4, N'Sidorov S.S.')
SELECT 1 FROM "DUAL";

INSERT ALL
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (1, 7)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (2, 7)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (3, 2)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (4, 3)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (4, 6)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (5, 6)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (6, 5)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (6, 4)
 INTO "m2m_books_authors" ("b_id", "a_id") VALUES (7, 1)
SELECT 1 FROM "DUAL";

INSERT ALL
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (1, 1)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (1, 5)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (2, 1)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (2, 5)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (3, 6)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (4, 2)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (4, 3)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (5, 2)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (6, 5)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (7, 2)
 INTO "m2m_books_genres" ("b_id", "g_id") VALUES (7, 5)
SELECT 1 FROM "DUAL";

ALTER TRIGGER "TRG_subscriptions_sb_id" DISABLE;
INSERT ALL
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (100, 1, 3, TO_DATE('2011-01-12', 'YYYY-MM-DD'), TO_DATE('2011-02-12', 'YYYY-MM-DD'), 'N')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (2, 1, 1, TO_DATE('2011-01-12', 'YYYY-MM-DD'), TO_DATE('2011-02-12', 'YYYY-MM-DD'), 'N')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (3, 3, 3, TO_DATE('2012-05-17', 'YYYY-MM-DD'), TO_DATE('2012-07-17', 'YYYY-MM-DD'), 'Y')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (42, 1, 2, TO_DATE('2012-06-11', 'YYYY-MM-DD'), TO_DATE('2012-08-11', 'YYYY-MM-DD'), 'N')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (57, 4, 5, TO_DATE('2012-06-11', 'YYYY-MM-DD'), TO_DATE('2012-08-11', 'YYYY-MM-DD'), 'N')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (61, 1, 7, TO_DATE('2014-08-03', 'YYYY-MM-DD'), TO_DATE('2014-10-03', 'YYYY-MM-DD'), 'N')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (62, 3, 5, TO_DATE('2014-08-03', 'YYYY-MM-DD'), TO_DATE('2014-10-03', 'YYYY-MM-DD'), 'Y')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (86, 3, 1, TO_DATE('2014-08-03', 'YYYY-MM-DD'), TO_DATE('2014-09-03', 'YYYY-MM-DD'), 'Y')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (91, 4, 1, TO_DATE('2015-10-07', 'YYYY-MM-DD'), TO_DATE('2015-03-07', 'YYYY-MM-DD'), 'Y')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (95, 1, 4, TO_DATE('2015-10-07', 'YYYY-MM-DD'), TO_DATE('2015-11-07', 'YYYY-MM-DD'), 'N')
 INTO "subscriptions" ("sb_id", "sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") VALUES (99, 4, 4, TO_DATE('2015-10-08', 'YYYY-MM-DD'), TO_DATE('2025-11-08', 'YYYY-MM-DD'), 'Y')
SELECT 1 FROM "DUAL";
ALTER TRIGGER "TRG_subscriptions_sb_id" ENABLE;