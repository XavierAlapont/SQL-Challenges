-- PROBLEM 15  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC HAVING CLAUSE WITH JOINS CHALLENGE
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- For each	product in the Production.Product Table 
-- determine using the Sales.SalesOrderHeader Table 
-- how many of orders were placed in 2012.		
-- Only output those products where at least 200 were ordered.
-- You will need to join both tables with the Sales.SalesOrderDetail table
-- that contains both a product ID (Production.Product Table foreign key)
-- and a SalesOrderID (Sales.SalesOrderHeader Table foreign key)

SELECT P.Name AS [Product Name],
       SUM(SOD.OrderQty) AS ProductOrderCount
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesOrderDetail SOD
ON SOD.SalesOrderID = SOH.SalesOrderID
INNER JOIN Production.Product P
ON P.ProductID = SOD.ProductID
WHERE SOH.OrderDate BETWEEN '1/1/2012' AND '12/31/2012'
GROUP BY P.Name
HAVING SUM(SOD.OrderQty) >= 200
