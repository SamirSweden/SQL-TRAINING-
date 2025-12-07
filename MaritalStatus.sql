use AdventureWorks2019;

SELECT * FROM HumanResources.Employee

SELECT DISTINCT JobTitle
FROM HumanResources.Employee
WHERE MaritalStatus = 'S' 
AND GENDER = 'M'


-- Если хочешь видеть, кто именно (id + должность + пол/семейное положение)

SELECT BusinessEntityID , JobTitle , MaritalStatus, Gender
FROM HumanResources.Employee 
WHERE MaritalStatus = 'S'
AND Gender = 'M'
-- Если хочешь видеть, кто именно (id + должность + пол/семейное положение):
