 /*
Inner Joins, Full/Left/Right Outer Joins
*/
use employee

SELECT *
FROM employeedemographics

SELECT *
FROM employeesalary

# Inner join
SELECT *
FROM employeedemographics Join employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID

# Full join
SELECT *FROM employeedemographics Left Join employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
UNION
SELECT * FROM employeedemographics Right Join employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID

/*
case statement
*/
SELECT FirstName, LastName, Age,
Case 
		When Age > 30 Then 'Old'
        When Age Between 27 and 30 Then 'Young'
        ELSE 'Baby'
END as Old_YOUNG
FROM employeedemographics
Where Age is Not Null
Order By Age ASC

SELECT FirstName, LastName, Age,
Case 
		When JobTitle = 'Salesman'Then Salary + (Salary * .10)
		When JobTitle = 'Accountant'Then Salary + (Salary * .05)
		When JobTitle = 'HR'Then Salary + (Salary * .000001)

        ELSE Salary + (Salary * 0.03)
END as new_salary
FROM employeedemographics JOIN employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
Where Age is Not Null
Order By Age ASC

/*
Having Clause
*/
SELECT JobTitle, COUNT(JobTitle)
FROM employeedemographics JOIN employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
GROUP BY JobTitle
Having Count(JobTitle)>1

/*
Update/Deleting data
*/
SELECT *
FROM employeedemographics

Update employeedemographics
Set Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

# DELETE
DELETE FROM employeedemographics
WHERE EmployeeID = 1005
/*
Aliasing
*/
SELECT CONCAT(FirstName,'  ',LastName) AS Full_Name
FROM employeedemographics

SELECT FirstName, LastName 
FROM employeedemographics

SELECT Demo.EmployeeID
FROM employeedemographics AS Demo

/*
Partition By
*/
SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (Partition by Gender) as TotalGender
FROM employeedemographics JOIN employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
 
SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (Partition by Gender) as TotalGender
FROM employeedemographics JOIN employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
 
SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) as TotalGender
FROM employeedemographics JOIN employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID
Group by Gender
/*
Stored procedures
*/
sele



































































































































































































