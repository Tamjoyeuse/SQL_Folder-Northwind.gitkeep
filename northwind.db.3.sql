---The country lead is interested in just the number of csutomers in each countr 
---please share a count of the number of customers in each country with her 
SELECT COUNT(customerID), country 
FROM Customers
GROUP BY country
ORDER BY country;

---Following the new price policy, the client rel manager wants some informationCategories
---Find the average unit price of products.
SELECT ROUND(AVG(UnitPrice), 2) AS Average_unitprice, productName
FROM Products
GROUP BY productname;

---The Sales Manager wants you to make a presentation of orders per customer 
---Determine the total number of orders placed by each customer.
SELECT Count(o.OrderID) AS CustomerID, o.CustomerId AS CustomerID, c.CompanyName AS CustomerName
From Orders o 
Inner join Customers c 
ON o.CustomerID = c.CustomerID
Group by CustomerName;

---You've been asked "How are we doing with sales?" You need a data-driven reply 
---Calculate the total sales (quantity * unit price) for each order to do your presentation
SELECT Round(quantity * UnitPrice) As TotalSales, OrderID 
From OrderDetails
GROUP BY OrderID;

---The discussions about the Freight charges is still on-going 
---Find the maximum, minimum, and average freight charges for all orders.
SELECT MAX(freight) AS Max_Freight, 
MIN(freight) AS Min_Freight, 
AVG(Freight) AS Avg_Freight
FROM Orders;

---Your manager wants to know how well-spread the workforce is across different cities
---Count the number of employees in each city.
SELECT COUNT(e.EmployeeId) AS Number_of_Staff, e.City AS city 
FROM Employees e
Group by city
ORDER BY Number_of_Staff Desc;

---Your Store Manager wants to have the total of each product sold for the day 
---Sum the quantities of each product sold.
SELECT SUM(o.Quantity) AS Quantity, p.ProductName AS ProductName, o.OrderID AS OrderID, o.ProductID AS ProductID
From OrderDetails o
Inner Join Products p
ON o.ProductID = p.ProductID
Group by ProductName;
 
---Some Employees have been reported as as having lower Occupancy on the job. The TL needs data to confirm that. 
---List the number of orders processed by each employee.
SELECT e.EmployeeID As Employee, o.OrderID AS Orders 
From Employees e 
Inner Join Orders o
On e.EmployeeID = o.EmployeeID; 

---The organization is beginning to pay closer attention to their supply chanin 
---Calculate the total number of products supplied by each supplier.
SELECT COUNT(Distinct ProductID) AS TotalProducts, s.SupplierID AS Suppliers
From Products p 
Inner join Suppliers s 
ON p.SupplierID = s.SupplierID
Group by Suppliers
Order by Suppliers;

---You've been asked to Check the number of units in stock 
---Find the average number of units in stock for each product category.
SELEct ROUND(AVG(p.UnitsInStock), 2) AS avg_Unit, c.CategoryID AS CategoryNumber, c.CategoryName AS ProductCategory 
FROM Products p 
INNER JOIN Categories c 
ON p.CategoryID = c.CategoryID
GROUP By ProductCategory
Order by ProductCategory;


