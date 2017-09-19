--Jose Guadarrama
--12/2/2014

--1
Create View Guadarrama.MdClients As
	Select * From Guadarrama.Clients
	Where State = 'MD';

--2
Select * From Guadarrama.MdClients;

--3
Create View Guadarrama.VaClients As
	Select * From Guadarrama.Clients
	Where State = 'VA';

--4
Select * From Guadarrama.VaClients;

--5
Create View Guadarrama.DeClients As
	Select * From Guadarrama.Clients
	Where State = 'DE';

--6
Select * From Guadarrama.DeClients;

--7
Create View Guadarrama.DoverClients As
	Select ClientNo, Name, Address, City, State, ZipCode
	From Guadarrama.Clients
	Where City = 'Dover';

--8
Select * From Guadarrama.DoverClients;

--9
Create View Guadarrama.LargeBalClients As
	Select ClientNo, Name, BalDue
	From Guadarrama.Clients
	Where BalDue > 1500;

--10
Select * From Guadarrama.LargeBalClients;

--11
Create View Guadarrama.AvgInvoiceAmt As
	Select ClientNo, Avg(InvoiceAmt) As "AvgInvAmt"
	From Guadarrama.Orders
	Group By ClientNo;

--12
Select * From Guadarrama.AvgInvoiceAmt;

--13
Create View Guadarrama.NumOfShipments As
	Select ShipDate, Count(ShipDate) As "NumShip"
	From Guadarrama.Orders
	Group By ShipDate;

--14
Select * From Guadarrama.NumOfShipments;