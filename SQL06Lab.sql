--Jose Guadarrama
--10.14.2014

--1
Select * From Guadarrama.SalesRep Where Gender = 'F'

--2
Select * From Guadarrama.SalesRep Where PayRate >= 12.75;

--3
Select * From Guadarrama.SalesRep Where HireDate >= '2007-05-30';

--4
Select 'hourly pay rate ' ConCat (PayRate) As "Distinct Pay Rates" From Guadarrama.SalesRep Order By "Distinct Pay Rates" Desc;

--5
Select * From Guadarrama.SalesRep 
Where Initial is Null;

--6
Select FirstName, LastName, CommRate, 
Case 
When CommRate < .065 Then 'Low commission rate'
When CommRate < .110 Then 'Medium commission rate'
Else 'High commission rate'
End As "Commission Rate Class" From Guadarrama.SalesRep;

--7
Select Count(SalesRepNo)
As "Number of Sales Reps"
From Guadarrama.SalesRep;

--8
Select Avg(PayRate) ConCat' is the average pay rate for sales representatives.' As "Average Pay Rate" From Guadarrama.SalesRep;

--9
Select Min(CommRate) As "Min Commission Rate",
Max(CommRate) As "Max Commission Rate",
Max(CommRate) - Min(CommRate) As "Difference"
From Guadarrama.SalesRep;

--10
Select * From Guadarrama.SalesRep where PayRate > 15 And CommRate > .110;

--11
Select * From Guadarrama.Customer
Where State In ('MD') And Not (City = 'Baltimore' Or City = 'Annapolis');

--12
Select Avg(CreditLmt) ConCat' is the average of all credit limits in the Customer table.'
 As "Average Credit Limit" From Guadarrama.Customer;

--13
Select Count(CustNo) As "MD and VA Customers"
From Guadarrama.Customer
Where State In ('MD', 'VA');

--14
Select 
Count (City) As "Number of Customers",
Avg(Discount) As "Average Discount"
From Guadarrama.Customer
Group By City;

--15
Select CustNo, CustName, Balance
From Guadarrama.Customer
Where Balance > 0;

--16
Select * From Customer
Where CreditLmt <= 12500 And Balance > 0;

--17
Select * From Customer
Where City In ('Dover', 'Newark', 'Wilmington');

--18
Select * From Customer
Where City In ('Georgetown', 'Delmar') And State in ('DE');

--19
Select * From SalesTrans
Where ShipDate is Null;

--20
Select * From SalesTrans
Where ShipDate = SaleDate;

--21
Select  * From SalesTrans
Where SaleDate Between '2013-06-01' And '2013-07-31';

--22
Select SalesRepNo,
Count (TransNo) As "Number of Sales"
From Guadarrama.SalesTrans
Group By SalesRepNo
Order By "Number of Sales" Desc;

--23
Select Avg(InvoiceAmt) ConCat' is the average invoice amount for all sales transaction.'
 As "Average Invoice Amount" From Guadarrama.SalesTrans;

--24
Select * From SalesTrans
Where SalesRepNo = 99001;

--25
Select * From SalesTrans
Where CustNo = 11001;

--26
Select Count(DeptNo) ConCat ' data rows in the Department table.'
As "Number Of Departments" From Guadarrama.Department;

--27
Select DeptName As "DeptName"
From Guadarrama.Department
Order By "DeptName";

--28
Select Sum(AmtPaid)
ConCat' is the sum of all amounts paid in the Payment Table.'
As "Sum of Amount Paid"
From Guadarrama.Payments;

--29
Select * From Guadarrama.Payments
Where DateRcvd = '2013-08-30';

--30
Select * From Guadarrama.Payments
Where AmtPaid < 1500;