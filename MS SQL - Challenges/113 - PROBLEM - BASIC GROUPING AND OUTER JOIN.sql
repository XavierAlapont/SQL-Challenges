-- PROBLEM 13  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC GROUPING WITH OUTER JOINS CHALLENGE 
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- Using the Sales.SalesOrderHeader table determine	
-- how many sales occurred in each territory between	
-- July	1, 2010	and	December 31, 2013 ?		
-- Order the results by	the sale count in descending order.
-- group the results not by	the	TerritoryID	but	by	
-- the name of the territory (found in the Sales.SalesTerritory table).

SELECT ST.Name AS TerritoryName,
       COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '7/1/2010' AND '12/31/2013'
GROUP BY ST.Name
