INSERT ALL
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (1, N'Eugene Onegin', N'[{"id":7,"name":"Alexander Pushkin"}]',
              N'[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (2, N'The Fishermen and the Golden Fish',
              N'[{"id":7,"name":"Alexander Pushkin"}]',
              N'[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (3, N'Foundation and Empire', N'[{"id":2,"name":"Isaac Asimov"}]',
              N'[{"id":6,"name":"Science Fiction"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (4, N'Programming Psychology',
              N'[{"id":3,"name":"Dale Carnegie"},
                 {"id":6,"name":"Bjarne Stroustrup"}]',
              N'[{"id":2,"name":"Programming"},
                 {"id":3,"name":"Psychology"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (5, N'The C++ Programming Language',
              N'[{"id":6,"name":"Bjarne Stroustrup"}]', 
              N'[{"id":2,"name":"Programming"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (6, N'Course of Theoretical Physics',
              N'[{"id":4,"name":"Lev Landau"},
                 {"id":5,"name":"Evgeny Lifshitz"}]',
              N'[{"id":5,"name":"Classic"}]')
  INTO "library_in_json" ("lij_id", "lij_book", "lij_author", "lij_genre")
   VALUES (7, N'The Art of Computer Programming',
              N'[{"id":1,"name":"Donald Knuth"}]',
              N'[{"id":2,"name":"Programming"},
                 {"id":5,"name":"Classic"}]')
SELECT 1 FROM "DUAL";