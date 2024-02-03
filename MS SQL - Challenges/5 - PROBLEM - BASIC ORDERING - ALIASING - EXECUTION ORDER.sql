-- PROBLEM 5 
--------------
-- BASIC ORDERING - EXECUTION ORDER - ALIASES   
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- USING THE Sales.vSalesPerson TABLE FROM THE MS ADVENTUREWORKS2022 DATABASE
-- FIND THE LAST NAMES AND NAMES OF THE SALES PEOPLE WITH MORE THAN $200,000 
-- IN TOTAL SALES AND ORDER THE LIST ACCORDING TO THE SALES QUOTA (IN DESCENDING ORDER) 
-- AND THEN THE LAST NAME. USE ALIASES OR THE COLUMN POSITIONING ORDER WHEN POSSIBLE.

-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)

-- Comment: The Aliases defined in Select do not work with the WHERE clause
-- because the SQL execution order vs. SQL writing order 
-- WRITING ORDER  : SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY
-- EXECUTION ORDER: FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY
-- THE WHERE clause is executed before the SELECT clause but the ORDER BY
-- is executed after the SELECT clause therefore ORDER BY can understand 
-- Aliases defined in SELECT
   

SELECT SalesQuota   AS 'Sales Quota',
	LastName     AS 'Sales Person Last Name',
	FirstName    AS 'Sales Person First Name'
FROM Sales.vSalesPerson
WHERE SalesQuota > 200000
ORDER BY 1 DESC, [Sales Person Last Name] ASC