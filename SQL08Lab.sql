--Jose Guadarrama
--10/30/2014

--1
Select RepTable.SalesRepNo,
	RepTable.FirstName,
	RepTable.LastName,
	RepTable.DeptNo,
	DepTable.DeptName
 From Guadarrama.SalesRep As RepTable
      Join
      Guadarrama.Department As DepTable
      On RepTable.DeptNo = DepTable.DeptNo
      Order By RepTable.SalesRepNo;

--2
Select RepTable.SalesRepNo,
	TranTable.TransNo,
	TranTable.CustNo,
	TranTable.SaleDate,
	TranTable.InvoiceAmt
 From Guadarrama.SalesRep As RepTable
	Join
	Guadarrama.SalesTrans As TranTable
	On RepTable.SalesRepNo = TranTable.SalesRepNo
	Where TranTable.InvoiceAmt <= 1000
	Order By RepTable.SalesRepNo;

--3
Select CustTable.CustNo,
	CustTable.CustName,
	TranTable.InvoiceAmt,
	TranTable.ShipDate
 From Guadarrama.Customer As CustTable
	Join
	Guadarrama.SalesTrans As TranTable
	On CustTable.CustNo = TranTable.CustNo
	Where TranTable.ShipDate Between '2013-10-01' And '2013-10-31'
	Order By CustTable.CustNo;

--4
Select TranTable.TransNo,
	TranTable.InvoiceAmt,
	RepTable.SalesRepNo,
	DepTable.DeptName,
	CustTable.CustName
 From Guadarrama.SalesTrans As TranTable,
	Guadarrama.SalesRep As RepTable,
	Guadarrama.Department As DepTable,
	Guadarrama.Customer As CustTable
 Where RepTable.SalesRepNo = TranTable.SalesRepNo And
	TranTable.CustNo = CustTable.CustNo And
	RepTable.DeptNo = DepTable.DeptNo And
	TranTable.InvoiceAmt = 1000;

--5
Select SalesRep.SalesRepNo,
	SalesRep.LastName,
	SalesTrans.TransNo,
	SalesTrans.SalesRepNo,
	SalesTrans.InvoiceAmt
    From Guadarrama.SalesRep
	Left Exception Join
	Guadarrama.SalesTrans
	On SalesRep.SalesRepNo = SalesTrans.SalesRepNo;