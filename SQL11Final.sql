--Jose Guadarrama
--12/2/2014

--1
Select * From Guadarrama.Customer
Where City In ('Baltimore');

--2
Select * From Guadarrama.Customer
Where State Not In ('DE');

--3
Select CustNo,
	CustName,
	Discount
	From Guadarrama.Customer
	Where Discount >= .15;

--4
Select CustNo,
	CustName,
	Balance
	From Guadarrama.Customer
	Where Balance > 0;

--5
Select * From Guadarrama.Customer
Where City like '%Beach%';

--6
Select * From Guadarrama.Customer
Where CustName like '%Company%';

--7
Select * From Guadarrama.Customer
Where Address like '%Street%';

--8
Select * From Guadarrama.SalesTrans
Where InvoiceAmt >= 10000;

--9
Select * From Guadarrama.SalesTrans
Where CustNo In (11001, 11002, 11003)
Order By CustNo;

--10
Select TransNo,
	ShipDate
	From Guadarrama.SalesTrans
	Where ShipDate >= '2013-06-15' And ShipDate <= '2013-07-15';
--11
Select * From Guadarrama.SalesTrans
Where SaleDate = ShipDate;

--12
Select * From Guadarrama.SalesTrans
Where SaleDate + 1 Days = ShipDate;

--13
Select * From Guadarrama.SalesRep
Where HireDate Between '2001-01-01' And '2001-12-31';

--14
Select * From Guadarrama.SalesRep
Where BirthDate < '1980-01-01';

--15
Select Count(SalesRepNo) As "NumOfReps",
	Avg(PayRate) As "AvgPayRate"
	From Guadarrama.SalesRep;

--16
Select * From Guadarrama.SalesRep
Where Initial is Null;

--17
Select Count(*) As "NumOfPayments",
	Sum(AmtPaid) As "SumOfAmtPaid"
	From Guadarrama.Payments;

--18
Select * From Guadarrama.SalesRep
Where CommRate >=.065 And PayRate >= 12.75;

--19
Select * From Guadarrama.SalesRep
Where PayRate >= 12.00 And PayRate <= 14.00;

--20
Select CustNo,
	CustName,
	Discount
From Guadarrama.Customer
Where Discount < 
(Select Avg(Discount) From Guadarrama.Customer);

--21
Select RepTable.FirstName,
	RepTable.LastName,
	DepTable.DeptNo,
	DepTable.DeptName
From Guadarrama.SalesRep As RepTable
	Join
	Guadarrama.Department As DepTable
	On RepTable.DeptNo = DepTable.DeptNo
	Order By RepTable.LastName;

--22
Select Count(SalesRepNo) As NumOfTrans,
Sum(InvoiceAmt) As SumInvoiceAmts
From Guadarrama.SalesTrans;

--23
Select FirstName || '' || Initial || '. ' || LastName As "EmpFullName"
From Guadarrama.SalesRep
Where Initial is Not Null;
	
--24
Select FirstName || '' || LastName As "EmpFullName"
From Guadarrama.SalesRep
Where Initial is Null; 

--25
Select Count(CustNo) As "SussexCoCount",
Avg(Discount) As "AvgDiscount"
From Guadarrama.Customer
Where City In ('Delmar', 'Dewey Beach', 'Georgetown', 'Lewes', 'Rehoboth Beach');