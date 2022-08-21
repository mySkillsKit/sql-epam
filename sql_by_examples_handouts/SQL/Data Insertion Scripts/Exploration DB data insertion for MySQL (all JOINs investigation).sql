INSERT INTO `rooms` (`r_id`, `r_name`, `r_space`)
VALUES
(1, 'A room with two computers', 5),
(2, 'A room with three computers', 5),
(3, 'An empty room 1', 2),
(4, 'An empty room 2', 2),
(5, 'An empty room 3', 2);



INSERT INTO `computers` (`c_id`, `c_room`, `c_name`)
VALUES
(1, 1, 'The computer A in the room 1'),
(2, 1, 'The computer B in the room 1'),
(3, 2, 'The computer A in the room 2'),
(4, 2, 'The computer B in the room 2'),
(5, 2, 'The computer C in the room 2'),
(6, NULL, 'Unassigned computer A'),
(7, NULL, 'Unassigned computer B'),
(8, NULL, 'Unassigned computer C');