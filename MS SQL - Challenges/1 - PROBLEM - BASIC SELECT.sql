-- PROBLEM 1  
-------------------------
-- BASIC SELECT STATEMENTS 
------------------------- 
-- PROBLEM STATEMENT 
-------------------------
-- USING THE PERSON.PERSON TABLE FROM THE MS ADVENTUREWORKS2022 DATABASE
-- OUTPUT THE TOP 1 % ROWS 
-- DISPLAYING THE FIRST NAME, MIDDLE NAME AND LAST NAME COLUMNS
-- AND ORDER ALPHABETICALLY BY LAST NAME AND THEN FIRST NAME 

-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)

SELECT TOP 1 PERCENT
	FirstName AS 'First Name', 
	MiddleName AS 'Middle Name', 
	LastName AS 'Last Name'
FROM Person.Person
ORDER BY 3 ASC, 1 ASC 