use AdventureWorks2019;

SELECT * FROM HumanResources.Employee
-- Если хочешь видеть, кто именно (id + должность + пол/семейное положение)
SELECT DISTINCT JobTitle
FROM HumanResources.Employee
WHERE MaritalStatus = 'S' 
AND GENDER = 'M'

SELECT DISTINCT JobTitle , Gender FROM HumanResources.Employee

  

-- Если хочешь видеть, кто именно (id + должность + пол/семейное положение):
SELECT BusinessEntityID , JobTitle , MaritalStatus, Gender
FROM HumanResources.Employee 
WHERE MaritalStatus = 'S'
AND Gender = 'M'



SELECT BusinessEntityID , JobTitle , BirthDate,
      FLOOR(DATEDIFF(DAY , BirthDate , GETDATE()) / 365.25) AS AgeApprox
FROM HumanResources.Employee
WHERE JobTitle LIKE '%SALES%' -- ВЫВЕСТИ СПИСОК С ДОЛЖНОСТЯМИ ГДЕ ЕСТЬ ПРЕФИКС SALES & вычислить возраст




