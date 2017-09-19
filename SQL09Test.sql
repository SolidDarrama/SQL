--Jose Guadarrama
--11/18/2014

--1
Select OrderNo,
       ClientNo,
       InvoiceAmt
From Guadarrama.Orders
Where InvoiceAmt >= (Select Avg(InvoiceAmt)
	From Guadarrama.Orders);

--2
Select ClientNo,
	Name,
	BalDue
From Guadarrama.Clients
Where BalDue >= (Select Avg(BalDue)
	From Guadarrama.Clients);

--3
Select ClntTable.ClientNo,
	ClntTable.Name,
	ClntTable.BalDue
From Guadarrama.Clients As ClntTable
Where ClntTable.BalDue > 100 And 250 <= (Select Sum(InvoiceAmt)
	From Guadarrama.Orders As OrdTable
	Where ClntTable.ClientNo = OrdTable.ClientNo);

--4
Select ClientNo, "MinInvoiceAmt", "MaxInvoiceAmt"
	From(Select ClientNo,
		Min(InvoiceAmt) As "MinInvoiceAmt",
		Max(InvoiceAmt) As "MaxInvoiceAmt"
	From Guadarrama.Orders
	Group By ClientNo) As AmountsMinMax
     Where "MinInvoiceAmt" <= 100
     And "MaxInvoiceAmt" >= 500;

--5
Update Guadarrama.Clients
       Set BalDue = BalDue + (Select Sum(InvoiceAmt)
       From Guadarrama.Orders
	Where Clients.ClientNo = Orders.ClientNo)
       Where ClientNo < 10016;