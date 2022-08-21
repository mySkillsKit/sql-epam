SET IDENTITY_INSERT [shopping] ON;
INSERT INTO [shopping]
(
    [sh_id],
    [sh_transaction],
    [sh_category]
) VALUES
(1, 1, N'Bag'),
(2, 1, N'Dress'),
(3, 1, N'Bag'),
(4, 2, N'Bag'),
(5, 2, N'Skirt'),
(6, 3, N'Dress'),
(7, 3, N'Skirt'),
(8, 3, N'Shoes'),
(9, 3, N'Hat'),
(10, 4, N'Bag');
SET IDENTITY_INSERT [shopping] OFF;