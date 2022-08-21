SET IDENTITY_INSERT [books] ON;
INSERT INTO [books] ([b_id], [b_name], [b_year], [b_quantity])
VALUES
(1, N'Eugene Onegin', 1985, 2),
(2, N'The Fishermen and the Golden Fish', 1990, 3),
(3, N'Foundation and Empire', 2000, 5),
(4, N'Programming Psychology', 1998, 1),
(5, N'The C++ Programming Language', 1996, 3),
(6, N'Course of Theoretical Physics', 1981, 12),
(7, N'The Art of Computer Programming', 1993, 7);
SET IDENTITY_INSERT [books] OFF;

SET IDENTITY_INSERT [authors] ON;
INSERT INTO [authors] ([a_id], [a_name])
VALUES
(1, N'Donald Knuth'),
(2, N'Isaac Asimov'),
(3, N'Dale Carnegie'),
(4, N'Lev Landau'),
(5, N'Evgeny Lifshitz'),
(6, N'Bjarne Stroustrup'),
(7, N'Alexander Pushkin');
SET IDENTITY_INSERT [authors] OFF;

SET IDENTITY_INSERT [genres] ON;
INSERT INTO [genres] ([g_id], [g_name])
VALUES
(1, N'Poetry'),
(2, N'Programming'),
(3, N'Psychology'),
(4, N'Science'),
(5, N'Classic'),
(6, N'Science Fiction');
SET IDENTITY_INSERT [genres] OFF;

SET IDENTITY_INSERT [subscribers] ON;
INSERT INTO [subscribers] ([s_id], [s_name])
VALUES
(1, N'Ivanov I.I.'),
(2, N'Petrov P.P.'),
(3, N'Sidorov S.S.'),
(4, N'Sidorov S.S.');
SET IDENTITY_INSERT [subscribers] OFF;

INSERT INTO [m2m_books_authors]
([b_id], [a_id])
VALUES
(1, 7),
(2, 7),
(3, 2),
(4, 3),
(4, 6),
(5, 6),
(6, 5),
(6, 4),
(7, 1);

INSERT INTO [m2m_books_genres] ([b_id], [g_id])
VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 5),
(3, 6),
(4, 2),
(4, 3),
(5, 2),
(6, 5),
(7, 2),
(7, 5);

SET IDENTITY_INSERT [subscriptions] ON;
INSERT INTO [subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active])
VALUES
(100, 1, 3, '2011-01-12', '2011-02-12', 'N'),
(2, 1, 1, '2011-01-12', '2011-02-12', 'N'),
(3, 3, 3, '2012-05-17', '2012-07-17', 'Y'),
(42, 1, 2, '2012-06-11', '2012-08-11', 'N'),
(57, 4, 5, '2012-06-11', '2012-08-11', 'N'),
(61, 1, 7, '2014-08-03', '2014-10-03', 'N'),
(62, 3, 5, '2014-08-03', '2014-10-03', 'Y'),
(86, 3, 1, '2014-08-03', '2014-09-03', 'Y'),
(91, 4, 1, '2015-10-07', '2015-03-07', 'Y'),
(95, 1, 4, '2015-10-07', '2015-11-07', 'N'),
(99, 4, 4, '2015-10-08', '2025-11-08', 'Y');
SET IDENTITY_INSERT [subscriptions] OFF;