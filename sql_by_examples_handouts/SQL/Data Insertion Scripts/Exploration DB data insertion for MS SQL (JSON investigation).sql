SET IDENTITY_INSERT [library_in_json] ON;
INSERT INTO [library_in_json]
(
    [lij_id],
	[lij_book],
    [lij_author],
    [lij_genre]
) VALUES
(1, N'Eugene Onegin', N'[{"id":7,"name":"Alexander Pushkin"}]', N'[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]'),
(2, N'The Art of Computer Programming', N'[{"id":1,"name":"Donald Knuth"}]', N'[{"id":2,"name":"Programming"},{"id":5,"name":"Classic"}]'),
(3, N'Course of Theoretical Physics', N'[{"id":4,"name":"Lev Landau"},{"id":5,"name":"Evgeny Lifshitz"}]', N'[{"id":5,"name":"Classic"}]'),
(4, N'Foundation and Empire', N'[{"id":2,"name":"Isaac Asimov"}]', N'[{"id":6,"name":"Science Fiction"}]'),
(5, N'Programming Psychology', N'[{"id":3,"name":"Dale Carnegie"},{"id":6,"name":"Bjarne Stroustrup"}]', N'[{"id":2,"name":"Programming"},{"id":3,"name":"Psychology"}]'),
(6, N'The Fishermen and the Golden Fish', N'[{"id":7,"name":"Alexander Pushkin"}]', N'[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]'),
(7, N'The C++ Programming Language', N'[{"id":6,"name":"Bjarne Stroustrup"}]', N'[{"id":2,"name":"Programming"}]');
SET IDENTITY_INSERT [library_in_json] OFF;