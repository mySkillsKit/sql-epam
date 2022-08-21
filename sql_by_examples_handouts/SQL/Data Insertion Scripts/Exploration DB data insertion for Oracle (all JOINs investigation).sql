INSERT ALL
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (1, N'A room with two computers', 5)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (2, N'A room with three computers', 5)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (3, N'An empty room 1', 2)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (4, N'An empty room 2', 2)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (5, N'An empty room 3', 2)
SELECT 1 FROM "DUAL";

INSERT ALL
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (1, 1, N'The computer A in the room 1')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (2, 1, N'The computer B in the room 1')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (3, 2, N'The computer A in the room 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (4, 2, N'The computer B in the room 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (5, 2, N'The computer C in the room 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (6, NULL, N'Unassigned computer A')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (7, NULL, N'Unassigned computer B')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (8, NULL, N'Unassigned computer C')
SELECT 1 FROM "DUAL";