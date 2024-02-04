-- PROBLEM 10  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC AGGREGATE CHALLENGE - SUM 
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------

-- Join the Production.Product table and the Production.ProductInventory table for	
-- only the	products that appear in both tables. Use the ProductID as the joining column.		
-- Production.ProductInventory contains the quantity of each product (several rows can appear for
-- each product to indicate the product appears in multiple locations).		
-- Determine how much money we would earn if we sold every product for its list price for each product	
-- with a ListPrice greater than $0.	

SELECT SUM(P.ListPrice*I.Quantity)
FROM Production.Product P
INNER JOIN Production.ProductInventory I
ON I.ProductID = P.ProductID
WHERE P.ListPrice > 0
