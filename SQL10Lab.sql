--Jose Guadarrama
--11/25/2014

--1
Create View DeCustomers As
	Select * From Guadarrama.Customer
	Where State='DE';

--2
Select * From Guadarrama.DeCustomers;

--3
Create View MdCustomers As
	Select * From Guadarrama.Customer
	Where State='MD';

--4
Select * From Guadarrama.MdCustomers;

--5
Create View VaCustomers As
	Select * From Guadarrama.Customer
	Where State='VA';

--6
Select * From Guadarrama.VaCustomers;

--7
Create View FemaleReps As
	Select FirstName, LastName, HireDate
	From Guadarrama.SalesRep
	Where Gender='F';

--8
Select * From Guadarrama.FemaleReps;

--9
Create View MaleReps As
	Select FirstName, LastName, HireDate
	From Guadarrama.SalesRep
	Where Gender='M';

--10
Select * From Guadarrama.MaleReps;

--11
Create View CityDiscount As
	Select City, Avg(Discount) As "AvgDisocunt"
	From Guadarrama.Customer
	Group By City;

--12
Select * From Guadarrama.CityDiscount;

--13
Create View Guadarrama.DiscountCount As
	Select Discount,
		 Count(*) As "NumCustomers"
	From Guadarrama.Customer
	Group By Discount;

--14
Select * From Guadarrama.DiscountCount;

--15
Create View SameDayShip As
	Select * From Guadarrama.SalesTrans
	Where ShipDate = SaleDate;

--16
Select * From Guadarrama.SameDayShip;

--17
Create View Q1CountSum As
	Select Count(InvoiceAmt) As "Q1Transaction", 
	Sum(InvoiceAmt) As "SumOfTrans"
	From Guadarrama.SalesTrans
	Where SaleDate Between '2013-01-01' And '2013-03-31';

--18
Select * From Guadarrama.Q1CountSum;

--19
Create View Q2CountSum As
	Select Count(InvoiceAmt) As "Q1Transaction", 
	Sum(InvoiceAmt) As "SumOfTrans"
	From Guadarrama.SalesTrans
	Where SaleDate Between '2013-04-01' And '2013-06-30';

--20
Select * From Guadarrama.Q2CountSum;

--21
Create View Q3CountSum As
	Select Count(InvoiceAmt) As "Q1Transaction", 
	Sum(InvoiceAmt) As "SumOfTrans"
	From Guadarrama.SalesTrans
	Where SaleDate Between '2013-07-01' And '2013-09-30';

--22
Select * From Guadarrama.Q3CountSum;

--23
Create View Q4CountSum As
	Select Count(InvoiceAmt) As "Q1Transaction", 
	Sum(InvoiceAmt) As "SumOfTrans"
	From Guadarrama.SalesTrans
	Where SaleDate Between '2013-10-01' And '2013-12-31';

--24
Select * From Guadarrama.Q4CountSum;

--25
Create View YearCountSum As
	Select Count(InvoiceAmt) As "Q1Transaction", 
	Sum(InvoiceAmt) As "SumOfTrans"
	From Guadarrama.SalesTrans
	Where SaleDate Between '2013-01-01' And '2013-12-31';

--26
Select * From Guadarrama.YearCountSum;

--27
Create View HighLimits As
	Select * From Guadarrama.Customer
	Where CreditLmt >= 50000;

--28
Select * From Guadarrama.HighLimits;

--29
Create View HaveBalance As
	Select * From Guadarrama.Customer
	Where Balance > 0;

--30
Select * From Guadarrama.HaveBalance;

--31
Create View HasPaidOnBal As
	Select Customer.CustNo,
 	Customer.CustName,
	Payments.DateRcvd,
	Payments.AmtPaid
	From Guadarrama.Customer
	join
	Guadarrama.Payments
	On Customer.CustNo = Payments.CustNo;

--32
Select * From Guadarrama.HasPaidOnBal;

