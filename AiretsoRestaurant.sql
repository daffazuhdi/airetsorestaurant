
CREATE DATABASE [AiretsoRestaurant]
GO
USE [AiretsoRestaurant]


CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerId LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(20) NOT NULL,
	CustomerTable INT NOT NULL
)

CREATE TABLE StaffRole(
	StaffRoleID CHAR(4) PRIMARY KEY CHECK(StaffRoleId LIKE 'SR[0-9][0-9]'),
	StaffRoleName VARCHAR(20) NOT NULL
)

CREATE TABLE Staff(
	StaffID CHAR(5) PRIMARY KEY CHECK(StaffId LIKE 'ST[0-9][0-9][0-9]'),
	StaffRoleID CHAR(4) FOREIGN KEY REFERENCES StaffRole(StaffRoleID) ON UPDATE CASCADE ON DELETE CASCADE,
	StaffName VARCHAR(20) NOT NULL,
	StaffGender VARCHAR(6) CHECK(StaffGender IN ('Male', 'Female')) NOT NULL
)

CREATE TABLE Menu(
	MenuID CHAR(6) PRIMARY KEY CHECK (MenuId LIKE 'MNU[0-9][0-9][0-9]'),
	MenuName VARCHAR(40) NOT NULL,
	MenuPrice INT NOT NULL
)

CREATE TABLE Inventory(
	MenuID CHAR(6) FOREIGN KEY REFERENCES Menu(MenuID) ON UPDATE CASCADE ON DELETE CASCADE,
	MenuStock INT NOT NULL,
	PRIMARY KEY (MenuID) 
)

CREATE TABLE [Order](
	OrderID CHAR(6) PRIMARY KEY CHECK(OrderId LIKE 'ORD[0-9][0-9][0-9]'),
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE,
	OrderDate DATE NOT NULL
)

CREATE TABLE OrderDetail(
	OrderID CHAR(6) FOREIGN KEY REFERENCES [Order](OrderID) ON UPDATE CASCADE ON DELETE CASCADE,
	MenuID CHAR(6) FOREIGN KEY REFERENCES Menu(MenuID) ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT NOT NULL,
	PRIMARY KEY (OrderID, MenuID)
)

CREATE TABLE PaymentType(
	PaymentTypeID CHAR(3) PRIMARY KEY CHECK(PaymentTypeId LIKE 'PT[0-9]'),
	PaymentTypeName VARCHAR(20) NOT NULL
)

CREATE TABLE Payment(
	PaymentID CHAR(6) PRIMARY KEY CHECK(PaymentID LIKE 'PAY[0-9][0-9][0-9]'),
	PaymentTypeID CHAR(3) FOREIGN KEY REFERENCES PaymentType(PaymentTypeID) ON UPDATE CASCADE ON DELETE CASCADE,
	OrderID CHAR(6) FOREIGN KEY REFERENCES [Order](OrderID) ON UPDATE CASCADE ON DELETE CASCADE,
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE
)


