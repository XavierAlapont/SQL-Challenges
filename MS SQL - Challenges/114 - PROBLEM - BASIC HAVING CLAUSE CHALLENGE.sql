-- PROBLEM 14  
--
-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)
--------------
-- BASIC HAVING CLAUSE : GROUPING WITH AGGREGATES 
------------------------- 
-- PROBLEM STATEMENT - 
-------------------------
-- Determine the Total sales 
-- and the number of sales each sales person was responsible for
-- during the year 2012 for each sale that had a sales person assigned to it. 
-- return only those sales people who had at least 
-- $2 million in sales amount and at least 75 completed sales

SELECT
SOH.SalesPersonID,
SUM(TotalDue) AS [Total Sales ($) - 2012],
COUNT(*) AS [Total Sales (#) - 2012]
FROM Sales.SalesOrderHeader SOH
WHERE SOH.SalesPersonID IS NOT NULL
AND OrderDate BETWEEN '1/1/2012' AND '12/31/2012'
GROUP BY SOH.SalesPersonID
HAVING SUM(TotalDue) > 2000000
AND COUNT(*) > 75
