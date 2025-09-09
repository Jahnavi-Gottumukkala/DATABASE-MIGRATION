CREATE DATABASE SourceDB;
USE SourceDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT,
    OrderDate DATE
);

INSERT INTO Customers (CustomerName, ContactName, Country) VALUES ('Bob', 'bob@example.com', 'UK');
INSERT INTO Products (ProductName, Price) VALUES ('Mouse', 20.00);
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate) VALUES (1,1,2,'2025-09-08');
