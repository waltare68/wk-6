-- Assignment: Joins and Relationships
-- Author: Walter
-- File: answers.sql

-- Question 1
-- Get the first name, last name, email, and office code of all employees.
-- We are using an INNER JOIN to link the employees table with the offices table
-- on the officeCode column, so that only employees with a matching office show up.
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


-- Question 2
-- Get the product name, product vendor, and product line from the products table.
-- We use a LEFT JOIN so that all products will be listed, even if their product line
-- is not found in the productlines table.
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;


-- Question 3
-- Retrieve the order date, shipped date, status, and customer number 
-- for the first 10 orders. We use a RIGHT JOIN to make sure all orders 
-- are included, even if the customer information is missing.
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
