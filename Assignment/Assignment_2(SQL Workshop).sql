CREATE DATABASE Shop;

USE Shop;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    TotalAmount DECIMAL(10, 2),
    City VARCHAR(255),
    ProductDescription VARCHAR(255),
    IsReturnable BOOLEAN,
    OrderDate DATE,
    Quantity INT,
    ShippingStatus VARCHAR(50)
);

INSERT INTO Orders (OrderID, CustomerName, TotalAmount, City, ProductDescription, IsReturnable, OrderDate, Quantity, ShippingStatus)
VALUES 
(1, 'John Doe', 150.00, 'New York', 'Laptop', TRUE, '2024-11-28', 1, 'Shipped'),
(2, 'Jane Smith', 250.00, 'Los Angeles', 'Smartphone', FALSE, '2024-11-27', 2, 'Processing'),
(3, 'Michael Brown', 120.00, 'Chicago', 'Headphones', TRUE, '2024-11-26', 1, 'Delivered'),
(4, 'Emily Davis', 300.00, 'Houston', 'Tablet', FALSE, '2024-11-25', 3, 'Pending');

-- 1.Check status of the order

SELECT * FROM Orders WHERE OrderID = 1;

-- 2.Find total amount of your orders

SELECT SUM(TotalAmount) AS TotalOrderAmount
FROM Orders
WHERE CustomerName = 'Jane Smith';

-- 3.Update a customer’s city
SET SQL_SAFE_UPDATES = 0;  -- doubt

UPDATE Orders
SET City = 'San Francisco'
WHERE CustomerName = 'Jane Smith';

-- 4 Change a product description

UPDATE Orders
SET ProductDescription = 'Gaming Laptop'
WHERE OrderID = 1;

-- 5 Display all returnable products

SELECT * FROM Orders
WHERE IsReturnable = TRUE;

 
