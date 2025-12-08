BEGIN TRANSACTION 

DELETE FROM Sales.CurrencyRate
WHERE FromCurrencyCode = 'BRL'
	OR ToCurrencyCode = 'BRL'


select * from Sales.CurrencyRate
where FromCurrencyCode = 'BRL'
	OR ToCurrencyCode = 'BRL';
ROLLBACK TRANSACTION;


BEGIN TRANSACTION 

DELETE c 
FROM Sales.Customer c 
LEFT JOIN Sales.SalesOrderHeader soh 
	on c.CustomerID = soh.CustomerID
where soh.CustomerID is null; -- no orders


select c.CustomerID, soh.SalesOrderID 
FROM Sales.Customer c 

left join Sales.SalesOrderHeader soh
	ON c.CustomerID = soh.CustomerID
WHERE soh.CustomerID is null;

ROLLBACK TRANSACTION;
