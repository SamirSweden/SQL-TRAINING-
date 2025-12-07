CREATE TABLE clients  (
	client_id INT IDENTITY(1,1) PRIMARY KEY,
	person_id INT NOT NULL ,
	comment NVARCHAR(200) NOT NULL,
	FOREIGN KEY (person_id) REFERENCES Person.Person(BusinessEntityID)
);


INSERT INTO clients (person_id , comment) VALUES
(1, 'VIP клиент'),
(2, 'Постоянный клиент'),
(5, 'Пробная регистрация'),
(10000, 'Некорректный ID — нет такого человека');




SELECT 
	c.client_id,
	c.person_id,
	c.comment,
	p.FirstName,
	p.LastName
FROM clients c
FULL JOIN Person.Person p ON c.person_id = p.BusinessEntityID
