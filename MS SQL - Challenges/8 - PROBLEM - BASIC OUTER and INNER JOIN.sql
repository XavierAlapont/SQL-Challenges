-- PROBLEM 8  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC OUTER JOIN   
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- Return the Sales Person ID (BusinessEntityID) and Sales of the Year to date (SalesYTD) from
-- the Sales.SalesPerson Table.	 Join this table to the Sales.SalesTerritory table in such a way	
-- that every person in Sales.SalesPerson will	be returned regardless of whether or not they are assigned	
-- to a territory. Also, return the Name column	from Sales.SalesTerritory. Give this column the column	
-- alias “Territory Name”. Join to the Person.Person table to return the sales person’s first name and last name.
-- Now, only include those rows where the territory’s name is either “Northeast” or “Central”

SELECT P.FirstName, P.LastName,
       SP.BusinessEntityID,
       SP.SalesYTD,
       ST.Name AS [Territory	Name]
FROM Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SP.TerritoryID
INNER JOIN Person.Person P
ON P.BusinessEntityID = SP.BusinessEntityID
WHERE ST.Name IN ('Northeast', 'Central')