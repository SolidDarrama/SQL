--Jose Guadarrama
--10.2.2014

--1
Create Table Guadarrama.Clients
	(ClientNo	Decimal		(5, 0)	Not Null Primary Key,
	Name		Character	(35)	Not Null,
	Address		Character	(30)	Not Null,
	City		Character	(20)	Not Null,
	State		Character	(2)	Not Null,
	ZipCode		Decimal		(9, 0)	Not Null,
	BalDue		Decimal		(6, 2)	Not Null);

--2
Insert Into Guadarrama.Clients
	Values(10001,
		'Johnson Rentals Co.',
		'5775 Dewey Beach Drive',
		'Dewey Beach',
		'DE',
		199710000,
		199.99);

--3 
Select * From Guadarrama.Clients;

--4
Create Table Guadarrama.Orders
	(OrderNo	Decimal	(6, 0)	Not Null Primary Key,
	ClientNo	Decimal	(5, 0)	Not Null,
	SaleDate	Date		Not Null,
	InvoiceAmt	Decimal	(8, 2)	Not Null,
	ShipDate	Date		Default Null);

--5
Insert Into Guadarrama.Orders
	Values(12001,
		10002,
		'2014-08-02',
		425.25,
		'2014-08-03');


--6
Select * From Guadarrama.Orders