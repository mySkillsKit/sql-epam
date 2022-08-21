INSERT INTO `site_pages` (`sp_id`, `sp_parent`, `sp_name`) VALUES
(1, NULL, 'Main'),
(2, 1, 'For subscribers'),
(3, 1, 'For sponsors'),
(4, 1, 'For advertisers'),
(5, 2, 'News'),
(6, 2, 'Statistics'),
(7, 3, 'Offers'),
(8, 3, 'Success stories'),
(9, 4, 'Events'),
(10, 1, 'Contacts'),
(11, 3, 'Documents'),
(12, 6, 'Current'),
(13, 6, 'Archive'),
(14, 6, 'Non-official');

INSERT INTO `cities` (`ct_id`, `ct_name`) VALUES
(1, 'London'),
(2, 'Paris'),
(3, 'Madrid'),
(4, 'Tokyo'),
(5, 'Moscow'),
(6, 'Kiev'),
(7, 'Minsk'),
(8, 'Riga'),
(9, 'Warsaw'),
(10, 'Berlin');

INSERT INTO `connections` (`cn_from`, `cn_to`, `cn_cost`, `cn_bidir`) VALUES
(1, 5, 10, 'Y'),
(1, 7, 20, 'N'),
(7, 1, 25, 'N'),
(7, 2, 15, 'Y'),
(2, 6, 50, 'N'),
(6, 8, 40, 'Y'),
(8, 4, 30, 'N'),
(4, 8, 35, 'N'),
(8, 9, 15, 'Y'),
(9, 1, 20, 'N'),
(7, 3, 5, 'N'),
(3, 6, 5, 'N');