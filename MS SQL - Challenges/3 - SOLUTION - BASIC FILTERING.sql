--PROBLEM 3  
--------------
--BASIC FILTERING  
------------------------- 
--PROBLEM STATEMENT - 
-------------------------
--USING THE Production Product TABLE FROM THE MS ADVENTUREWORKS22 DATABASE 
--FIND ALL THE PRODUCTS THAT START WITH A,B,C,D,E,F,G OR H
--THAT BELONG TO PRODUCT LINE IS S OR T

-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)

SELECT *
FROM Production.Product
WHERE Name LIKE '[ABCDEFGH]%' 
  AND ProductLine IN ('S','T')
