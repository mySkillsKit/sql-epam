SET IDENTITY_INSERT [rooms] ON;
INSERT INTO [rooms] ([r_id], [r_name], [r_space])
VALUES
(1, N'A room with two computers', 5),
(2, N'A room with three computers', 5),
(3, N'An empty room 1', 2),
(4, N'An empty room 2', 2),
(5, N'An empty room 3', 2);
SET IDENTITY_INSERT [rooms] OFF;

SET IDENTITY_INSERT [computers] ON;
INSERT INTO [computers] ([c_id], [c_room], [c_name])
VALUES
(1, 1, N'The computer A in the room 1'),
(2, 1, N'The computer B in the room 1'),
(3, 2, N'The computer A in the room 2'),
(4, 2, N'The computer B in the room 2'),
(5, 2, N'The computer C in the room 2'),
(6, NULL, N'Unassigned computer A'),
(7, NULL, N'Unassigned computer B'),
(8, NULL, N'Unassigned computer C');
SET IDENTITY_INSERT [computers] OFF;