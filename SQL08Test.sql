--Jose Guadarrama
--11-11-2014

--1
Select OrdTable.OrderNo,
	OrdTable.SaleDate,
	OrdTable.InvoiceAmt,
	ClntTable.ClientNo,
	ClntTable.Name
From Guadarrama.Orders As OrdTable
	join
	Guadarrama.Clients As ClntTable
	On OrdTable.ClientNo = ClntTable.ClientNo
	Order By OrdTable.InvoiceAmt Desc;

--2
Select ClntTable.ClientNo,
	ClntTable.Name,
	OrdTable.OrderNo
From Guadarrama.Clients As ClntTable
	join
	Guadarrama.Orders As OrdTable
	On ClntTable.ClientNo = OrdTable.ClientNo
	Order By OrdTable.ClientNo;

--3
Select ClntTable.ClientNo,
	ClntTable.Name,
	OrdTable.OrderNo,
	OrdTable.SaleDate,
	OrdTable.ShipDate,
	OrdTable.InvoiceAmt
From Guadarrama.Clients As ClntTable
	join
	Guadarrama.Orders As OrdTable
	On ClntTable.ClientNo = OrdTable.ClientNo
	Where OrdTable.InvoiceAmt > 1000
	Order By OrdTable.ShipDate;

--4
Select ClntTable.ClientNo,
	ClntTable.Name,
	OrdTable.OrderNo,
	OrdTable.InvoiceAmt
From Guadarrama.Clients As ClntTable,
	Guadarrama.Orders As OrdTable
Where ClntTable.ClientNo = OrdTable.ClientNo And
	OrdTable.InvoiceAmt < 100;