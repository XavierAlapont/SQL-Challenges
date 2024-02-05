-- PROBLEM 12  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC GROUPING WITH JOIN CHALLENGE 
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- Using the Sales Order Header, Sales Person and Sales Territory Tables
-- (Sales.SalesOrderHeader, Sales.SalesPerson and Sales.SalesTerritory)
-- Determine the Total Sales by Person in the year 2013 
-- (SUM TotalDue in the SalesOrderHeader Table) and
-- output the First Name and Last Name of the Sales Person 
-- (from the Person.Person Table) and the Sale Territory Name 
-- (from the SalesTerritory table). Do not display results with 
-- NULL values for the territory name or the sales person name column.
-- Sort the output in the Territory Name and Total Sales in descending order


SELECT  P.FirstName AS [SalesPerson First Name],		
        P.LastName AS [SalesPerson Last Name],  
		T.Name AS TerritoryName, 
		SUM(TotalDue) AS [Total 2013 Sales]
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
INNER JOIN Person.Person P
ON P.BusinessEntityID = SP.BusinessEntityID
INNER JOIN Sales.SalesTerritory T
ON T.TerritoryID = SP.TerritoryID
WHERE OrderDate BETWEEN '1/1/2013' AND '12/31/2013'
GROUP BY T.Name, P.FirstName, P.LastName
ORDER BY 3, 4 DESC