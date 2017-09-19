--Jose Guadarrama
--10/23/2014

--1
Insert Into Guadarrama.Clients
     Values(10016,
          	'Hubbard & Sons, LLC',
          	'111 Oxford Circle',
          	'Dover',
          	'DE',
          	'199010111',
          	175.00);

--2
Insert Into Guadarrama.Clients
     Values(10017,
          	'Coastal Surf Shop',
          	'25 Coastal Way',
          	'Dewey Beach',
          	'DE',
          	'199710025',
          	425.25);

--3
Insert Into Guadarrama.Orders
     Values(120031,
          	10003,
          	'2014-08-25',
          	1149.50,
          	'2014-08-29');

--4
Insert Into Guadarrama.Orders
     Values(120032,
          	10007,
          	'2014-08-27',
          	1775.75,
          	'2014-08-29');

--5
Update Guadarrama.Clients
	Set Name = Replace(Name,
	'Co.',
	'Company');

--6
Update Guadarrama.Clients
	Set Name = Replace(Name,
	'Inc.',
	'Incorporated');

--7
Update Guadarrama.Clients
	Set Name = Replace(Name,
	'Corp.',
	'Corporation');

--8
Update Guadarrama.Clients
	Set Address = Replace(Address,
	'Ave.',
	'Avenue');

--9
Update Guadarrama.Clients
	Set Address = Replace(Address,
	'Blvd.',
	'Boulevard');

--10
Update Guadarrama.Clients
	Set Address = Replace(Address,
	'Rd.',
	'Road');

--11
Update Guadarrama.Clients
	Set Address = Replace(Address,
	'Hwy.',
	'Highway');

--12
Update Guadarrama.Clients
	Set Address = Trim(Address) Concat'-Oak Park'
	Where ClientNo = 10013;

--13
Update Guadarrama.Orders
	Set ShipDate = SaleDate + 3 Days
	Where SaleDate Between '2014-08-01' And '2014-08-15';

--14
Update Guadarrama.Orders
	Set InvoiceAmt = InvoiceAmt + (.05 * InvoiceAmt)
	Where InvoiceAmt >= 1000;

--15
Delete From Guadarrama.Orders
	Where OrderNo = 120013;

--16
Select * From Guadarrama.Clients;

--17
Select * From Guadarrama.Orders