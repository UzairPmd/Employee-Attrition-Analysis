USE hotel;

CREATE TABLE customers(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT
);

INSERT INTO customer VALUES
(1,'ganga'),
(2,'rajesh'),
(3,'mahesh');

INSERT INTO orders VALUES
(101,1),
(102,2),
(103,4),
(104,1);

-- INNER JOIN
SELECT c.CustomerID,
       c.CustomerName,
       o.OrderID
FROM customer c
INNER JOIN orders o
ON c.CustomerID = o.CustomerID;

-- LEFT JOIN
SELECT c.CustomerID,
       c.CustomerName,
       o.OrderID
FROM customer c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID;