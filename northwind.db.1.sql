---The EMEA area manager wants to gain insights into customers from Germany--
---provide a report of all the customers from Germany---
SELECT *
FROM Customers
WHERE country = 'Germany';

---Management is still discussing the topic of price-leadership---
---List all products that cost more than $20---
SELECT *
fROM Products
WHERE unitprice > 20;

---The company is looking at 10 yearly trends for forcasts---
---Show all orders placed in the year 1997---
SELECT *
FROM Orders
WHERE orderdate = '1997';

---there's been a change in labour laws in the UK, and the company must comply--- 
---Retrieve employees who live in London---
SELECT *
FROM Employees
WHERE city = 'London';

---the company wants to localize suppliers in different regions--- 
---Find all suppliers located in the USA---
SELECT *
FROM Suppliers
WHERE country = 'USA';

---The marketing manager wants identify marketplace customers--- 
---Display customers who have "Market" in their company name---
SELECT *
FROM Customers
WHERE companyname Like '%Market%';

---The warehouse manager takes inventory seriously---
---List products with quantities in stock less than 10---
SELECT *
FROM Products
WHERE quantityperunit < 10;

---The Shipping Manager has identified rising cost in freight for some orders--- 
---Show orders with a freight charge greater than $50---
SELECT *
FROM Orders
WHERE freight > 50;

---The sales manager wants to restructure the sames team---
---Find employees with the title 'Sales Representative'---
SELECT * 
FROM Employees
WHERE title is 'Sales Representative';

---Certain products have been discontinued, but the data need to be communicated--- 
---Select products that are not discontinued---
SELECT *
FROM Products
WHERE discontinued = '0';

