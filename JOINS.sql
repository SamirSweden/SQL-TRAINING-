SELECT 
  e.JobTitle,
  p.FirstName,
  p.LastName
FROM HumanResources.Employee e
JOIN Person.Person p ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY p.FirstName,p.LastName -- Получить имя, фамилию и должность всех сотрудников


SELECT e.BusinessEntityID , p.FirstName , p.LastName , e.BirthDate 
FROM HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
WHERE e.BirthDate = (
	SELECT MAX(BirthDate)
	FROM HumanResources.Employee
)







