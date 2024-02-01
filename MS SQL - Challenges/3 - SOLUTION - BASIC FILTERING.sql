--PROBLEM 3  
--------------
--BASIC FILTERING  
------------------------- 
--PROBLEM STATEMENT - 
-------------------------
--USING THE Production Product TABLE FIND 
--ALL THE PRODUCTS THAT START WITH A,B,C,D,E,F,G OR H
--AND WHICH PRODUCT LINE IS S OR T

SELECT *
FROM Production.Product
WHERE Name LIKE '[ABCDEFGH]%' 
  AND ProductLine IN ('S','T')
