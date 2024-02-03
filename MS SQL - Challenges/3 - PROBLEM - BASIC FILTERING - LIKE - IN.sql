-- PROBLEM 3  
--------------
-- BASIC FILTERING  
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- USING THE Production Product TABLE FROM THE MS ADVENTUREWORKS2022 DATABASE 
-- FIND ALL THE PRODUCTS THAT START WITH ANY LETTER A to N , 
-- DO NOT END WITH LETTERS O to Z, 
-- HAVE A LETTER S SOMEWHERE IN THE PRODUCT NAME
-- AND THAT BELONG TO PRODUCT LINE IS S OR T

-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)

SELECT *
FROM Production.Product
WHERE Name LIKE '[ABCDEFGHIJKLMN]%' 
  AND Name Like '%[^O-Z]'
  AND Name LIKE '%s%'
  AND ProductLine IN ('S','T')