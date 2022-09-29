USE AiretsoRestaurant
GO


INSERT INTO Customer VALUES
('CU001', 'Naura', 3),
('CU002', 'Laura', 1),
('CU003', 'Keanu', 2),
('CU004', 'Awkarin', 4),
('CU005', 'Gaga', 5),
('CU006', 'Justin', 9),
('CU007', 'Hailey', 7),
('CU008', 'Zayn', 6),
('CU009', 'Malik', 8),
('CU010', 'Gigi Hadid', 10)


INSERT INTO StaffRole VALUES
('SR01', 'Chef'),
('SR02', 'Cashier'),
('SR03', 'Waitress'),
('SR04', 'Cleaning Services'),
('SR05', 'Manager')


INSERT INTO Staff Values
('ST001', 'SR01', 'Tony Stark', 'Male'),
('ST002', 'SR01', 'Steve Rogers', 'Male'),
('ST003', 'SR01', 'Bruce Banner', 'Male'),
('ST004', 'SR02', 'Wanda', 'Female'),
('ST005', 'SR03', 'Vision', 'Male'),
('ST006', 'SR03', 'Natasha Romanoff', 'Female'),
('ST007', 'SR03', 'Clint Barton', 'Male'),
('ST008', 'SR04', 'Kate Bishop', 'Female'),
('ST009', 'SR04', 'Peter Parker', 'Male'),
('ST010', 'SR05', 'Tony Stark', 'Male')

INSERT INTO PaymentType VALUES
('PT1', 'Cash'),
('PT2', 'Debit'),
('PT3', 'Credit Card'),
('PT4', 'E-Wallet')

INSERT INTO Menu VALUES
('MNU001', 'Spaghetti Aglio Olio', '140000'),
('MNU002', 'Spaghetti Carbonara', '150000'),
('MNU003', 'Spaghetti Cacio E Pepe', '135000'),
('MNU004', 'Pizza Margaritha', '95000'),
('MNU005', 'Pizza Quattro Formaggi', '155000'),
('MNU006', 'Pizza San Daniele', '195000'),
('MNU007', 'Porcini Soup', '85000'),
('MNU008', 'Caesar Salad', '105000'),
('MNU009', 'Cotoletta Torinese', '185000'),
('MNU010', 'Ice Lemon Tea', '35000')

INSERT INTO Inventory VALUES
('MNU001', 103),
('MNU002', 79),
('MNU003', 134),
('MNU004', 113),
('MNU005', 58),
('MNU006', 93),
('MNU007', 143),
('MNU008', 136),
('MNU009', 99),
('MNU010', 190)

INSERT INTO [Order] VALUES
('ORD001', 'CU001', '2021-05-13'),
('ORD002', 'CU002', '2021-05-13'),
('ORD003', 'CU003', '2021-05-14'),
('ORD004', 'CU004', '2021-07-23'),
('ORD005', 'CU005', '2021-08-11'),
('ORD006', 'CU006', '2021-09-03'),
('ORD007', 'CU007', '2022-01-01'),
('ORD008', 'CU008', '2022-01-02'),
('ORD009', 'CU009', '2022-01-04'),
('ORD010', 'CU010', '2022-01-06')

INSERT INTO OrderDetail VALUES
('ORD001', 'MNU001', 2),
('ORD001', 'MNU004', 1),
('ORD001', 'MNU010', 2),
('ORD002', 'MNU002', 1),
('ORD002', 'MNU005', 1),
('ORD002', 'MNU010', 1),
('ORD003', 'MNU003', 1),
('ORD003', 'MNU001', 1),
('ORD003', 'MNU010', 2),
('ORD004', 'MNU005', 2),
('ORD004', 'MNU010', 4),
('ORD005', 'MNU002', 1),
('ORD005', 'MNU001', 1),
('ORD005', 'MNU007', 1),
('ORD005', 'MNU010', 3),
('ORD006', 'MNU006', 1),
('ORD006', 'MNU007', 1),
('ORD006', 'MNU010', 3),
('ORD007', 'MNU009', 1),
('ORD007', 'MNU010', 1),
('ORD008', 'MNU001', 1),
('ORD008', 'MNU002', 1),
('ORD008', 'MNU010', 2),
('ORD009', 'MNU008', 2),
('ORD009', 'MNU010', 2),
('ORD010', 'MNU001', 1),
('ORD010', 'MNU002', 1),
('ORD010', 'MNU003', 1),
('ORD010', 'MNU005', 2),
('ORD010', 'MNU010', 5)

INSERT INTO Payment VALUES
('PAY001', 'PT1', 'ORD002', 'ST004'),
('PAY002', 'PT3', 'ORD001', 'ST006'),
('PAY003', 'PT2', 'ORD003', 'ST005'),
('PAY004', 'PT1', 'ORD004', 'ST004'),
('PAY005', 'PT2', 'ORD005', 'ST004'),
('PAY006', 'PT3', 'ORD006', 'ST004'),
('PAY007', 'PT4', 'ORD007', 'ST007'),
('PAY008', 'PT1', 'ORD008', 'ST004'),
('PAY009', 'PT2', 'ORD009', 'ST006'),
('PAY010', 'PT2', 'ORD010', 'ST004')
