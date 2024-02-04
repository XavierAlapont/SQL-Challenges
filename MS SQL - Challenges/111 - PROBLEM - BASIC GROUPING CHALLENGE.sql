-- PROBLEM 11  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC GROUPING CHALLENGE  
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- The Production.ProductInventory table contains information about our
-- product’s current inventory. Find for each Product (ProductID), 
-- the total number of items for this product in inventory we currently possess, 	
-- and in how many different locations the product is stored and order
-- by number of items in inventory in descending order

SELECT ProductID,
       SUM(Quantity) AS [Total Quantity],
       COUNT(*) AS [Locations Product is Stored]
FROM Production.ProductInventory
GROUP BY ProductID
ORDER BY [Total Quantity] DESC