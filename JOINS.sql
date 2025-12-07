SELECT 
  e.JobTitle,
  p.FirstName,
  p.LastName
FROM HumanResources.Employee e
JOIN Person.Person p ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY p.FirstName,p.LastName -- Получить имя, фамилию и должность всех сотрудников










