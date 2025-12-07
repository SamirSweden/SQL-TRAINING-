use AdventureWorks2019;
 --DDL + DML 

CREATE TABLE Customers(
	CustomerID INT IDENTITY(1,1) PRIMARY KEY,
	FullName NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) UNIQUE,
	CreatedAt DATETIME2 DEFAULT SYSDATETIME()
);


CREATE TABLE Products(
	ProductID INT IDENTITY (1,1) PRIMARY KEY,
	ProductName NVARCHAR(100) NOT NULL,
	Price NUMERIC(10,2) NOT NULL
);

CREATE TABLE Orders(
	OrderID INT IDENTITY(1,1) PRIMARY KEY,
	CustomerID INT NOT NULL,
	OrderDate DATETIME2 DEFAULT SYSDATETIME(),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);



CREATE TABLE Orderitems (
	ItemID INT IDENTITY (1,1) PRIMARY KEY,
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL DEFAULT 1,
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);





INSERT INTO Customers(FullName, Email) VALUES
('Ivan ivanov', 'ivanovivan@gmail.com'),
('Ryan-TLS','ryankrypton@gmail.com'),
('weras','weras@gmail.com')


INSERT INTO Products(ProductName , Price) VALUES 
('Iphone 17 pro max','2000'),
('Hetzner Server','20'),
('Macbook pro','4000')


INSERT INTO Orders(CustomerID) VALUES
(1),
(2),
(3)


INSERT INTO Orderitems(OrderID, ProductID, Quantity) VALUES
(1 , 2 , 10),
(2 , 3 , 20),
(3 , 4 , 30)
