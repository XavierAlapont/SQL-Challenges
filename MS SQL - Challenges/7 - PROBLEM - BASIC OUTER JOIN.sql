-- PROBLEM 7  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC OUTER JOIN   
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- Using the Sales Order Header, Sales Person and Sales Territory Tables
-- (Sales.SalesOrderHeader, Sales.SalesPerson and Sales.SalesTerritory)
-- Output the First Name and Last Name of the Sales Person, the Sale Territory,
-- the Sale Order Number and the Sale Total Due for each order 
-- from	the Sales.SalesOrderHeader table that has a sales person listed	on the sale. 
-- We also want to view the sales territory that each sales person is associated
-- with regardless of whether or not they have a listed sales territory.	
-- Return only those rows where the territory’s name is “Northeast” and
-- sort the output in the TotalDue column in descending	order

-- Comment: Notice the use of the INNER JOIN between Sales.SalesOrderHeader and Sales.SalesPerson.		
-- This ensures that we only return rows for sales that have a listed sales person.
-- Since there are rows in the Sales.SalesPerson table with a NULL value in	
-- the TerritoryID column, we need to use a LEFT OTUER JOIN from Sales.SalesPerson to 
-- Sales.SalesTerritory in order to complete this request.			

SELECT  P.FirstName, 
        P.LastName,  
		T.Name AS TerritoryName, 
		SOH.SalesOrderNumber, 
		SOH.TotalDue
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
INNER JOIN Person.Person P
ON P.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T
ON T.TerritoryID = SP.TerritoryID
WHERE T.Name = 'Northeast'
ORDER BY SOH.TotalDue DESC