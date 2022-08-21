INSERT INTO `library_in_json`
(
    `lij_id`,
    `lij_book`,
    `lij_author`,
    `lij_genre`
) VALUES
(1, 'Eugene Onegin', '[{"id":7,"name":"Alexander Pushkin"}]', '[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]'),
(2, 'The Art of Computer Programming', '[{"id":1,"name":"Donald Knuth"}]', '[{"id":2,"name":"Programming"},{"id":5,"name":"Classic"}]'),
(3, 'Course of Theoretical Physics', '[{"id":4,"name":"Lev Landau"},{"id":5,"name":"Evgeny Lifshitz"}]', '[{"id":5,"name":"Classic"}]'),
(4, 'Foundation and Empire', '[{"id":2,"name":"Isaac Asimov"}]', '[{"id":6,"name":"Science Fiction"}]'),
(5, 'Programming Psychology', '[{"id":3,"name":"Dale Carnegie"},{"id":6,"name":"Bjarne Stroustrup"}]', '[{"id":2,"name":"Programming"},{"id":3,"name":"Psychology"}]'),
(6, 'The Fishermen and the Golden Fish', '[{"id":7,"name":"Alexander Pushkin"}]', '[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]'),
(7, 'The C++ Programming Language', '[{"id":6,"name":"Bjarne Stroustrup"}]', '[{"id":2,"name":"Programming"}]');