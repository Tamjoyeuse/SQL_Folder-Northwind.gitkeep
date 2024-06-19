---The Sales manager needs the list to inform him of which customer order which item
---Retrieve the order IDs and the names of customers who placed each order.
SELECT o.OrderID, c.CompanyName
FROM Orders o
INNER JOIN Customers c
ON c.CustomerID = O.customerID;

---The Vendor Manager wants to review current suppliers and products they supply. 
---List all products along with their supplier names.
SELECT p.ProductName, s.CompanyName
FROM Products p
INNER JOIN Suppliers s 
ON p.SupplierID = s.SupplierID;

---There has been reports about emplyees poor order handling, The organization wants to investigate this report
---Show all orders along with the names of the employees who processed them.
SELECT o.OrderID, e.lastName, e.FirstName
FROM Orders o
Inner Join Employees e 
ON o.EmployeeID = e.EmployeeID;

---To continue the on-going investigation, the manager wants to see the products for each order
---Display order details including the product name for each order.
SELECT o.*, p.ProductName
FROM OrderDetails o 
LEFT JOIN Products p 
ON o.ProductID = p.productID;

---The Customer Relations Manager needs a report including customers and their Orders
---Find all customers and the orders they have placed for the report
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.ContactTitle, o.orderID
FROM Customers c
LEFT JOIN Orders O 
ON c.CustomerID = o.CustomerID;

---it's time to have a meeting with the employees' managers in order to discuss the proposed actions
---Please print a list of the employee names along with the names of their managers.
SELECT e.EmployeeID, e.LastName, e.FirstName, e.ReportsTo
FROM Employees e;

--The question in the memo you received is about products in each category
---Retrieve the categories and the products in each category.
SELECT c.*, p.ProductID,  p.ProductName
FROM Categories c 
INNER JOIN Products p 
ON c.CategoryID = p.CategoryID;

---The client data analyst emailed that it is better to communicate with the customer contacts directly 
---provide the names of customers and their respective contact names for orders placed.
SELECT c.CompanyName, c.ContactName, o.OrderID, o.OrderDate
FROM Customers c 
INNER JOIN orders o 
ON c.CustomerID = o.CustomerID;

--The product manager has asked for a list of all products with their categories 
---please provide a list all products and their categories.
SELECT p.ProductName, p.CategoryID, c.CategoryName 
FROM Products p 
INNER JOIN Categories c 
oN p.CategoryID = c.CategoryID;

---You have a meeting with the Purchasing department to make sure that every stakeholder knows who supplies what 
---Display the names of suppliers and the products they supply.
SELECT s.SupplierID, s.CompanyName, s.ContactName, p.ProductID, p.ProductName 
FROM suppliers s 
Left JOIN Products p 
ON s.SupplierID = p.SupplierID;


