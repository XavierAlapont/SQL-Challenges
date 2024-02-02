--PROBLEM 2  
--------------
--BASIC FILTERING  
------------------------- 
--PROBLEM STATEMENT - 
-------------------------
--USING THE HUMANRESOURCES EMPLOYEE TABLE FROM THE MS ADVENTUREWORKS22 DATABASE
--FIND THE MARRIED MALE EMPLOYEES OR SINGLE FEMALE EMPLOYEES 
--THAT WERE BORN ON OR AFTER 1975 
--HIRED BETWEEN January 1st 2005 and December 31st 2012
--AND WHO TOOK LESS THAN 40 HOURS OF TOTAL VACATION TIME

-- Tested - Xavier Alapont - MS-SQL-SMS 19.2 (56.2)

SELECT *
FROM HumanResources.Employee
WHERE BirthDate >= '1-1-1975' 
  AND HireDate  Between '1-1-2005' AND '12-31-2012'
  AND VacationHours < 40
  AND (MaritalStatus = 'M' AND Gender ='M') OR
      (MaritalStatus = 'S' AND Gender ='F')