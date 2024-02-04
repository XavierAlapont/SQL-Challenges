-- PROBLEM 9  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC AGGREGATE CHALLENGE - COUNT 
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------

-- Join the Production.Product table and the Production.ProductInventory table
-- and show only the products that appear in both tables. Use the ProductID as the joining column.	
-- Count the number of products in the Join, the number of distinct products and the
-- number of products with a listed price not zero and cheaper than $10. 


SELECT COUNT(Name) AS 'Number of Products', 
       COUNT(DISTINCT Name) AS 'Number of Distinct Products',
	   COUNT(CASE WHEN P.ListPrice < 10 THEN Name END) AS 'Number of Cheap Products'
FROM Production.Product AS P
INNER JOIN Production.ProductInventory I
ON I.ProductID = P.ProductID
WHERE P.ListPrice > 0
