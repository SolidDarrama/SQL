--Jose Guadarrama
--10/21/2014

--1
Insert Into Guadarrama.Customer
Values(11031,
          'Wilmington University',
          '1011 North DuPont Hwy.',
          'Wilmington',
          'DE',
          '19896-1011',
          .200,
          100000,
          0.00);

--2
Insert Into Guadarrama.Customer
Values(11032,
          'Cyber Experts',
          '15 The Circle',
          'Dover',
          'DE',
          '19901-0015',
          .095,
          22500,
          0.00);

--3
Insert Into Guadarrama.SalesRep
Values(99012,
          'Warren',
          'T',
          'Wells',
          'M',
          '1983-03-19',
          '2010-11-01',
          33,
	  10.00,
          .040);

--4
Insert Into Guadarrama.SalesRep
Values(99013,
          'Stephanie',
          'K',
          'Clarkson',
          'F',
          '1984-02-14',
          '2010-11-15',
          44,
	  11.25,
          .075);

--5
Update Guadarrama.Customer
	Set CustName = Replace(CustName,
	'Co.',
	'Company');

--6
Update Guadarrama.Customer
	Set CustName = Replace(CustName,
	'Inc.',
	'Incorporation');

--7
Update Guadarrama.Customer
	Set CustName = Replace(CustName,
	'Corp.',
	'Corporation');

--8
Update Guadarrama.Customer
	Set Address = Replace(Address,
	'St.',
	'Street');

--9
Update Guadarrama.Customer
	Set Address = Replace(Address,
	'Ave.',
	'Avenue');

--10
Update Guadarrama.Customer
	Set Address = Replace(Address,
	'Blvd.',
	'Boulevard');

--11
Update Guadarrama.Customer
	Set Address = Replace(Address,
	'Rd.',
	'Road');

--12
Update Guadarrama.Customer
	Set Address = Replace(Address,
	'Hwy.',
	'Highway');

--13
Update Guadarrama.Customer
	Set Address = Trim(Address) Concat' / Suite A'
	Where CustNo = 11018;

--14
Update Guadarrama.SalesRep
	Set LastName ='Whitmore'
	Where SalesRepNo = 99002;

--15
Update Guadarrama.Customer
	Set Discount = Discount - (.015 * Discount)
	Where Discount < .100;

--16
Update Guadarrama.Customer
	Set Discount = (Select Avg(Discount) 
	From Guadarrama.Customer)
	Where CustNo = 11032;

--17
Update Guadarrama.Customer
	Set Discount = Discount + (.025 * Discount)
	Where CustName in ('Delaware-Tech','University of Delaware','Delaware State University','Wilmington University');

--18
Update Guadarrama.SalesRep
	Set PayRate = PayRate + (.035 * PayRate);

--19
Update Guadarrama.Customer
	Set CreditLmt = CreditLmt - 3500
	Where Balance > 0;

--20
Update Guadarrama.SalesTrans
	Set ShipDate = SaleDate + 3 Days
	Where SaleDate Between '2013-12-01' And '2013-12-31';

--21
Update Guadarrama.Department
	Set DeptName = Trim(DeptName) Concat' & Components'
	Where DeptNo = 11;

--22
Update Guadarrama.Department
	Set DeptName = Trim(DeptName) Concat' & Contracts'
	Where DeptNo = 66;

--23
Update Guadarrama.Customer
	Set City = 'Cumberland',
	     ZipCode = '21501-0001'
	Where CustNo = 11021;

--24
Update Guadarrama.SalesRep
	Set CommRate = CommRate + (.005 + CommRate);

--25
Delete From Guadarrama.Department
	Where DeptNo = 77;

--26
Delete From Guadarrama.SalesTrans
	Where ShipDate >= '2013-12-25';

--27
Select * From Guadarrama.Customer;

--28
Select * From Guadarrama.SalesRep;

--29
Select * From Guadarrama.SalesTrans
	Where SaleDate Between '2013-12-01' And '2013-12-31';

--30
Select * From Guadarrama.Department;