/*
CTEs
*/
use employee
WITH CTE_Employee as 
(SELECT FirstName,LastName, Gender, Salary, 
COUNT(Gender) OVER (partition by Gender) as TotalGender,
 AVG(Salary) OVER (partition by Gender) as Avgsalary 
 FROM employeedemographics JOIN employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
 WHERE Salary > "45000"
 )
SELECT FirstName, AvgSalary
FROM CTE_Employee

/*
Temp Table
*/

CREATE TABLE temp_employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)
/*
String Functions - Trim, LTrim, RTrim, Replace, Substring, Upper, Lower
*/
CREATE TABLE employeeerrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

Select * From employeeerrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

	



-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors
   

-- Using Substring

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)



-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors


/*
Today's Topic: Subqueries (in the Select, From, and Where Statement)
*/

Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary 

-- How to do it with Partition By
Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work
Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
order by EmployeeID


-- Subquery in From

Select a.EmployeeID, AllAvgSalary
From 
	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	 From EmployeeSalary) a
Order by a.EmployeeID


-- Subquery in Where


Select EmployeeID, JobTitle, Salary
From EmployeeSalary
where EmployeeID in (
	Select EmployeeID 
	From EmployeeDemographics
	where Age > 30)


/*
Stored Procedure
*/
call new_procedure

call Temp_Employee2('Salesman')

































































