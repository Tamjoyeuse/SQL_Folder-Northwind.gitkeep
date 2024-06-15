---The organization wants to have an insight into how they are categorized items with their description--- 
---retrieve the first 5 item categories, their description and images from the categories table----
SELECT * 
From Categories
LIMIT 5;

---The organization wants to identify customers without Fax numbers to fulfil regulatory requirements---
--retrieve all columns from the customers table where FAX number is missing---
SELECT * 
From Customers
WHERE fax IS NULL;

---The CR manager has received an email from a client that they have updated their contact name, yet we sent an email to the previous contact--
---provide a list of all customer names and their respective contact names--- 
SELECT CompanyName AS Customer_Names, ContactName AS Contact_Names
From customers;

---It's that time of the year and the manager wants to have an idea of quantities left of their products---
---Display the product names and quantities from the products table---
SELECT ProductName, QuantityPerUnit AS Quantities
From Products;

---The HR Manager just got back from Sabaticals - they want to go through the data available about their employees---
--Retrieve a list of all employees----
SELECT *
FROM employees;

---The sales Manager needs to confirm the correct dates for the availability of some products to key clients--
---show the order IDs and order dates from the Orders table---
SELECT orderid, orderdate
FROM Orders;

---The thirdparty manager is interested in having a glimps into suppliers--- 
---Select the first 10 rows from the Suppliers table--- 
SELECT *
FROM Suppliers
LIMIT 10;

---The client manager thinks that the ID format of client companies may need modification---
---Display the customer IDs and company names for all customers---
SELECT customerid, companyname
FROM customers;

---The product manager has informed of the need to improve product description per category---
---List all categories of products along with their descriptions--- 
SELECT categoryName, description
FROM categories;

---There's been discussions about price - the company is moving towards price leadership---
---Retrieve the product names and unit prices from the Product table---
select productName, UnitPrice
FROM Products;

---The Growth Manager wants to review the contact titles of all employees---
---Submit a report with the names and contact titles of all employees---
SELECT  CONCAT(FirstName || ' ' || LastName) AS Names, title AS Contact_Titles
FROM employees;

---The SEO manager is concerned that they may be loosing out in some markets----
---Provide a list displaying the countries of the company customers from the customer table--- 
SELECT customerID, country 
FROM customers;