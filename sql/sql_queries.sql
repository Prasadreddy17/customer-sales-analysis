#Select Database

USE company_db;

#Create Table
CREATE TABLE IF NOT EXISTS sales(
OrderID INT,
Customer VARCHAR(50),
City VARCHAR(50),
Category VARCHAR(50),
Sales INT,
Date DATE
);
SHOW TABLES;
---------------------------------------------------------------------
#Insert Data
INSERT INTO sales VALUES
(1,'Ravi','Hyderabad','Electronics',20000,'2023-01-10'),
(2,'Priya','Chennai','Furniture',15000,'2023-01-12'),
(3,'Arun','Bangalore','Electronics',25000,'2023-01-15'),
(4,'Sita','Hyderabad','Clothing',8000,'2023-01-18'),
(5,'Rahul','Chennai','Electronics',18000,'2023-01-20'),
(6,'Anjali','Bangalore','Furniture',22000,'2023-01);
SELECT * FROM sales;
-------------------------------------------------------------------------
#Total Sales by City
SELECT City, SUM(Sales) AS total_sales
FROM sales
GROUP BY City;
------------------------------------------------------------------------
#Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category;
------------------------------------------------------------------------
#Top Customers
SELECT Customer, SUM(Sales) AS total_sales
FROM sales
GROUP BY Customer
ORDER BY total_sales DESC;
-----------------------------------------------------------------------------
#Filter Data (WHERE)
SELECT * FROM sales
WHERE City = 'Hyderabad';
--------------------------------------------------------------------------------
#Multiple Conditions
SELECT * FROM sales
WHERE City='Chennai' AND Sales > 15000;
---------------------------------------------------------------------------------
#Pattern Search (LIKE)
SELECT * FROM sales
WHERE Customer LIKE 'R%';