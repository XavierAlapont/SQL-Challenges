-- PROBLEM 4  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC FILTERING WITH SUBQUERY  
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- USING THE Production Product TABLE FROM THE MS ADVENTUREWORKS2022 DATABASE 
-- FIND THE NAME OF ALL THE PRODUCTS WITH A KNOWN COLOR (NOT NULL)
-- THAT DO NOT HAVE A REVIEW IN THE Production ProductReview Table

-- Comment: Here we use a simple SELECT sub-query to create a set that 
-- is used to define filter (WHERE with conditional IN) 
-- the set is the ID (productIDs) for those products that have a customer review

SELECT Name, Color
FROM Production.Product
WHERE Color IS NOT NULL
  AND ProductID NOT IN ( SELECT ProductID 
                         FROM Production.ProductReview )
