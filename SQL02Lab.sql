-- Jose Guadarrama
-- 09.09.14

--1
Create Table Guadarrama.Payments
	(CustNo		Decimal	(5, 0)	Not Null Primary Key,
	DateRcvd	Date		Not Null,
	AmtPaid		Decimal	(7, 2)	Not Null);

--2
Insert Into Guadarrama.Payments
Values(11004,
	'2013-08-30',
	1575.00);
--3
Insert Into Guadarrama.Payments
Values(11011,
	'2013-08-28',
	2650.00);
--4
Insert Into Guadarrama.Payments
Values(11013,
	'2013-08-29',
	1685.75);
--5
Insert Into Guadarrama.Payments
Values(11018,
	'2013-08-30',
	3215.25);
--6
Insert Into Guadarrama.Payments
Values(11023,
	'2013-08-29',
	975.00);
--7
Insert Into Guadarrama.Payments
Values(11025,
	'2013-08-28',
	445.75);
--8
Insert Into Guadarrama.Payments
Values(11026,
	'2013-08-30',
	1025.25);
--9
Insert Into Guadarrama.Payments
Values(11028,
	'2013-08-29',
	1500.00);
--10
Select * From Guadarrama.Payments;

