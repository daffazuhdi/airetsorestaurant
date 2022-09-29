USE AiretsoRestaurant
GO

--1

--	ORDER

-- Customer : Jenny (Customer Baru)
-- Table : 3
-- Menu :
		-- 1. Spaghetti Aglio Olio		1
		-- 2. Ice Lemon Tea				1

INSERT INTO Customer VALUES
('CU011', 'Jenny', 3)

INSERT INTO [Order] VALUES
('ORD011', 'CU011', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD011', 'MNU001', 1),
('ORD011', 'MNU010', 1)

--	PAYMENT

-- Staff : Wanda
-- Payment Method : Debit

INSERT INTO Payment VALUES
('PAY011', 'PT2', 'ORD011', 'ST004')


-- Query Untuk Kitchen

UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD011'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD011'


-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD011'
	) A
WHERE O.OrderID = 'ORD011'

--2

--	ORDER

-- Customer : Lisa Manoban (Customer Baru)
-- Table : 1
-- Menu :
		-- 1. Spaghetti Aglio Olio				1
		-- 2. Spaghetti Cacio E Pepe			1
		-- 3. Ice Lemon Tea						2 

INSERT INTO Customer VALUES
('CU012', 'Lisa Manoban', 1)

INSERT INTO [Order] VALUES
('ORD012', 'CU012', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD012', 'MNU001', 1),
('ORD012', 'MNU003', 1),
('ORD012', 'MNU010', 2)

--	PAYMENT
-- Staff : Natasha Romanoff
-- Payment Method : Cash

INSERT INTO Payment VALUES
('PAY012', 'PT1', 'ORD012', 'ST006')


-- Query Untuk Kitchen

UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD012'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD012'


-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD012'
	) A
WHERE O.OrderID = 'ORD012'

--3

--	ORDER

-- Customer : Jisoo (Customer Baru)
-- Table : 5

-- Menu :
		-- 1. Spaghetti Carbonara				1
		-- 2. Porcini Soup						1
		-- 3. Pizza Margaritha					1
		-- 4. Ice Lemon Tea						2 

INSERT INTO Customer VALUES
('CU013', 'Jisoo', 5)

INSERT INTO [Order] VALUES
('ORD013', 'CU013', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD013', 'MNU002', 1),
('ORD013', 'MNU007', 1),
('ORD013', 'MNU004', 1),
('ORD013', 'MNU010', 2)

--	PAYMENT
-- Staff : Vision
-- Payment Method : Credit Card

INSERT INTO Payment VALUES
('PAY013', 'PT3', 'ORD013', 'ST005')


-- Query Untuk Kitchen

UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD013'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD013'


-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD013'
	) A
WHERE O.OrderID = 'ORD013'

--4

--	ORDER

-- Customer : Rosie (Customer Baru)
-- Table : 8
-- Menu :

		-- 1. Pizza Quattro Formaggi					1
		-- 2. Ice Lemon Tea								2 

INSERT INTO Customer VALUES
('CU014', 'Rosie', 9)

INSERT INTO [Order] VALUES
('ORD014', 'CU014', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD014', 'MNU005', 1),
('ORD014', 'MNU010', 2)

--	PAYMENT
-- Staff : Clint Barton
-- Payment Method : Credit Card

INSERT INTO Payment VALUES
('PAY014', 'PT3', 'ORD014', 'ST007')


-- Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD014'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD014'



-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD014'
	) A
WHERE O.OrderID = 'ORD014'

--5

--	ORDER

-- Customer : Niall Horan (Customer Baru)
-- Table : 1
-- Menu :

		-- 1. Caesar Salad								1
		-- 2. Cotoletta Torinese						1
		-- 3. Ice Lemon Tea								2 

INSERT INTO Customer VALUES
('CU015', 'Niall Horan', 1)

INSERT INTO [Order] VALUES
('ORD015', 'CU015', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD015', 'MNU008', 1),
('ORD015', 'MNU009', 1),
('ORD015', 'MNU010', 2)

--	PAYMENT
-- Staff : Clint Barton
-- Payment Method : Cash

INSERT INTO Payment VALUES
('PAY015', 'PT1', 'ORD015', 'ST007')


-- Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD015'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD015'



-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD015'
	) A
WHERE O.OrderID = 'ORD015'


--6

--	ORDER

-- Customer : Liam Payne (Customer Baru)
-- Table : 3
-- Menu :

		-- 1. Caesar Salad								3
		-- 2. Pizza San Daniele							2
		-- 3. Ice Lemon Tea								5 

INSERT INTO Customer VALUES
('CU016', 'Liam Payne', 3)

INSERT INTO [Order] VALUES
('ORD016', 'CU016', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD016', 'MNU008', 3),
('ORD016', 'MNU006', 2),
('ORD016', 'MNU010', 5)

--	PAYMENT
-- Staff : Wanda
-- Payment Method : Debit

INSERT INTO Payment VALUES
('PAY016', 'PT2', 'ORD016', 'ST004')


-- Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD016'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD016'



-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD016'
	) A
WHERE O.OrderID = 'ORD016'


--7

--	ORDER

-- Customer : Louis Tomlinson (Customer Baru)
-- Table : 2
-- Menu :

		-- 1. Spaghetti Cacio E Pepe					2
		-- 2. Pizza Quattro Formagi						2
		-- 3. Ice Lemon Tea								4 

INSERT INTO Customer VALUES
('CU017', 'Louis Tomlinson', 2)

INSERT INTO [Order] VALUES
('ORD017', 'CU017', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD017', 'MNU003', 3),
('ORD017', 'MNU005', 2),
('ORD017', 'MNU010', 4)

--	PAYMENT
-- Staff : Vision
-- Payment Method : Debit

INSERT INTO Payment VALUES
('PAY017', 'PT2', 'ORD017', 'ST005')


-- Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD017'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD017'



-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD017'
	) A
WHERE O.OrderID = 'ORD017'

--8

--	ORDER

-- Customer : Harry Styles (Customer Baru)
-- Table : 10
-- Menu :

		-- 1. Porcini Soup								1
		-- 2. Spaghetti Aglio Olio						1
		-- 3. Pizza Quattro Formagi						2
		-- 4. Ice Lemon Tea								5 

INSERT INTO Customer VALUES
('CU018', 'Harry Styles', 10)

INSERT INTO [Order] VALUES
('ORD018', 'CU018', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD018', 'MNU007', 1),
('ORD018', 'MNU001', 1),
('ORD018', 'MNU005', 2),
('ORD018', 'MNU010', 5)

--	PAYMENT
-- Staff : Natasha Romanoff
-- Payment Method : Debit

INSERT INTO Payment VALUES
('PAY018', 'PT2', 'ORD018', 'ST006')


-- Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD018'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD018'



-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD018'
	) A
WHERE O.OrderID = 'ORD018'

--9

--	ORDER

-- Customer : John Lennon (Customer Baru)
-- Table : 4
-- Menu :

		-- 1. Spaghetti Carbonara						2
		-- 2. Pizza Margaritha							1
		-- 3. Ice Lemon Tea								2 

INSERT INTO Customer VALUES
('CU019', 'John Lennon', 4)

INSERT INTO [Order] VALUES
('ORD019', 'CU019', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD019', 'MNU002', 2),
('ORD019', 'MNU004', 1),
('ORD019', 'MNU010', 2)

--	PAYMENT
-- Staff : Clint Barton
-- Payment Method : E-Wallet

INSERT INTO Payment VALUES
('PAY019', 'PT4', 'ORD019', 'ST007')


-- Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD019'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD019'



-- Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD019'
	) A
WHERE O.OrderID = 'ORD019'



--	ORDER

-- Customer : Paul McCartney (Customer Baru)
-- Table : 7
-- Menu :

		-- 1. Spaghetti Carbonara						1
		-- 2. Spaghetti Aglio Olio						2				
		-- 3. Pizza Quattro Formaggi					1
		-- 4. Porcini Soup								2
		-- 5. Ice Lemon Tea								5

INSERT INTO Customer VALUES
('CU020', 'Paul McCartney', 7)

INSERT INTO [Order] VALUES
('ORD020', 'CU020', '2022-01-17')

INSERT INTO OrderDetail VALUES
('ORD020', 'MNU002', 1),
('ORD020', 'MNU001', 2),
('ORD020', 'MNU005', 1),
('ORD020', 'MNU007', 2),
('ORD020', 'MNU010', 5)

--	PAYMENT
-- Staff : Natasha Romanoff
-- Payment Method : Credit Card

INSERT INTO Payment VALUES
('PAY020', 'PT3', 'ORD020', 'ST006')


-- 1. Query Untuk Kitchen
UPDATE I
SET I.MenuStock = I.MenuStock - OD.Quantity
FROM Inventory I
	JOIN OrderDetail OD ON I.MenuID = OD.MenuID
WHERE OD.OrderID = 'ORD020'

SELECT O.OrderID, C.CustomerName, C.CustomerTable, M.MenuName, OD.Quantity, i.MenuStock
FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN Inventory I ON M.MenuID = I.MenuID
WHERE O.OrderID = 'ORD020'

-- 2. Query Bill

SELECT O.OrderID, C.CustomerName, S.StaffName, M.MenuName, OD.Quantity, 
M.MenuPrice * OD.Quantity AS [Price], [Total], PT.PaymentTypeName AS [Payment Method], O.OrderDate

FROM [Order] O
	JOIN OrderDetail OD ON O.OrderID = OD.OrderID
	JOIN Payment P ON OD.OrderID = P.OrderID
	JOIN Staff S ON P.StaffID = S.StaffID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
	JOIN Customer C ON O.CustomerID = C.CustomerID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
		WHERE O.OrderID = 'ORD020'
	) A
WHERE O.OrderID = 'ORD020'

-- 3. Query Untuk Update Stok Makanan / Minuman
-- Menambah Stok Ice Lemon Tea sebesar 30

UPDATE Inventory
SET MenuStock = MenuStock + 30
WHERE MenuID = 'MNU010'

-- 4. Query untuk memperlihatkan staff yang menghandle transaksi pada tahun 2021

SELECT O.OrderID, S.StaffName
FROM Staff S
	JOIN Payment P ON S.StaffID = P.StaffID
	JOIN [Order] O ON P.OrderID = O.OrderID
WHERE YEAR(O.OrderDate) = 2021

-- 5. Query Untuk memperlihatkan Staff dengan Gender Female serta posisi nya

SELECT S.StaffName, SR.StaffRoleName
FROM Staff S
	JOIN StaffRole SR ON S.StaffRoleID = SR.StaffRoleID
WHERE StaffGender = 'Female'

-- 6. Menu Stock dibawah 100

SELECT M.MenuName, I.MenuStock
FROM Inventory I
	JOIN Menu M ON I.MenuID = M.MenuID
WHERE MenuStock < 100

-- 7. Memperlihatkan Staff dengan posisi sebagai chef

SELECT S.StaffID, S.StaffName, S.StaffGender
FROM Staff S
	JOIN StaffRole SR ON S.StaffRoleID = SR.StaffRoleID
WHERE SR.StaffRoleName = 'Chef'

-- 8. Memperlihatkan menu dengan harga diatas Rp.100.000

SELECT *
FROM Menu
WHERE MenuPrice > 100000

-- 9. Memperlihatkan Menu yang merupakan Spaghetti

SELECT *
FROM Menu
WHERE MenuName LIKE ('Spaghetti %')

-- 10. Memperlihatkan transaksi yang menggunakan Debit sebagai metode pembayaran

SELECT  O.OrderID, O.OrderDate, P.StaffID, PT.PaymentTypeName
FROM [Order] O
	JOIN Payment P ON O.OrderID = P.OrderID
	JOIN PaymentType PT ON P.PaymentTypeID = PT.PaymentTypeID
WHERE PT.PaymentTypeName = 'Debit'




























-- Query Untuk Memperlihatkan Transaksi yang berlangsung pada tahun 2021 Serta Total Pendapatan

SELECT COUNT(O.OrderID) AS [Total Order], [Total] 
FROM [Order] O
	JOIN OrderDetail OD ON OD.OrderID = O.OrderID
	JOIN Menu M ON OD.MenuID = M.MenuID,
	(
		SELECT SUM(M.MenuPrice * OD.Quantity) AS [Total]
		FROM [Order] O
			JOIN OrderDetail OD ON O.OrderID = OD.OrderID
			JOIN Menu M ON OD.MenuID = M.MenuID
	) A
WHERE YEAR(O.OrderDate) = 2021
GROUP BY Total