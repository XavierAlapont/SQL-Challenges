-- PROBLEM 6  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC INNER JOIN   
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- Join the Production.Product TABLE with the Production.ProductSubcategory TABLE 
-- using the foreign keys that identify ProductSubcategoryIDs on both tables then
-- using Table Aliases output The product name, Product Number and Product Subcategory Name

-- Comment:
-- The table Production.Product returns	504 rows but this Inner Join query returns only 295 rows.
-- A row is returned only if the value in the joining column (foreign key) from one table matches	
-- at least one value of the joining column in	another table. You will	notice a NULL value	in 
-- many of the rows for this column, which means that there is no value 
-- with which to join the row to in the Production.ProductSubcategory table.

SELECT P.Name, P.ProductNumber, PS.Name AS ProductSubCategoryName
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
