create database employee
use employee

show databases

create table EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

create table EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)
 
 insert into EmployeeDemographics Values (1001, 'Jim', 'Halpert', 30, 'Male')
 
 select * from EmployeeDemographics

#Table 1 Insert:
Insert into EmployeeDemographics VALUES
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')
 
 #Table 2 Insert:
Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

select * from EmployeeSalary

  /* 
  Select Statement
  *, Top, Distinct, Count, As, Max, Min, Avg
  */
  SELECT FirstName, LastName
  FROM EmployeeDemographics
   /* 
  Where Statement
  =, <>, <, >, And, Or, Like(%), Null, Not Null, In
  */
  
  SELECT *
  FROM EmployeeDemographics
  WHERE FirstName <> 'Jim'
  
   SELECT *
  FROM EmployeeDemographics
  WHERE Age <= 30 AND Gender = 'Male'
  
  # LIKE
   SELECT *
  FROM EmployeeDemographics
  WHERE LastName LIKE '%S'
  
  # in (In is like equal)
  
SELECT *
  FROM EmployeeDemographics
  WHERE FirstName IN ('Jim', 'Michael')
  
  /* 
  Group By, Order By
  */
  # DISTINCT
  SELECT DISTINCT(Gender)
  FROM EmployeeDemographics
  
  # Group By
  
  SELECT DISTINCT(Gender)
  FROM EmployeeDemographics
  
  SELECT Gender, COUNT(Gender) As Count_of_Gender
  FROM EmployeeDemographics
  WHERE Age > 31
  Group By Gender
  ORDER BY Count_of_Gender DESC
  
  # You can also use number
  
  SELECT *
  FROM EmployeeDemographics
  Order By 4 DESC, 5 DESC
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  