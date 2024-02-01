--PROBLEM 2  
--------------
--BASIC FILTERING  
------------------------- 
--PROBLEM STATEMENT - 
-------------------------
--USING THE HUMANRESOURCES EMPLOYEE TABLE FIND 
--THE MARRIED MALE EMPLOYEES OR SINGLE FEMALE EMPLOYEES 
--THAT WERE BORN ON OR AFTER 1975, HIRED ON OR AFTER 2005
--AND WHO TOOK LESS THAN 40 HOURS OF TOTAL VACATION TIME

SELECT *
FROM HumanResources.Employee
WHERE BirthDate >= '1-1-1975' 
  AND HireDate  >= '1-1-2005'
  AND VacationHours < 40
  AND (MaritalStatus = 'M' AND Gender ='M') OR
      (MaritalStatus = 'S' AND Gender ='F')