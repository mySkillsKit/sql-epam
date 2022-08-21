SET IDENTITY_INSERT [site_pages] ON;
INSERT INTO [site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES
(1, NULL, N'Main'),
(2, 1, N'For subscribers'),
(3, 1, N'For sponsors'),
(4, 1, N'For advertisers'),
(5, 2, N'News'),
(6, 2, N'Statistics'),
(7, 3, N'Offers'),
(8, 3, N'Success stories'),
(9, 4, N'Events'),
(10, 1, N'Contacts'),
(11, 3, N'Documents'),
(12, 6, N'Current'),
(13, 6, N'Archive'),
(14, 6, N'Non-official');
SET IDENTITY_INSERT [site_pages] OFF;

SET IDENTITY_INSERT [cities] ON;
INSERT INTO [cities] ([ct_id], [ct_name]) VALUES
(1, N'London'),
(2, N'Paris'),
(3, N'Madrid'),
(4, N'Tokyo'),
(5, N'Moscow'),
(6, N'Kiev'),
(7, N'Minsk'),
(8, N'Riga'),
(9, N'Warsaw'),
(10, N'Berlin');
SET IDENTITY_INSERT [cities] OFF;

INSERT INTO [connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES
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