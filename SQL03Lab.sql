--Jose Guadarrama
--09.16.2014

--1
Create Table Guadarrama.SalesRep
	(SalesRepNo	Decimal		(5, 0)	Not Null Primary Key,
	FirstName	Character	(20)	Not Null,
	Initial		Character	(1)	Default Null,
	LastName	Character	(20)	Not Null,
	Gender		Character	(1)	Not Null,
	BirthDate	Date			Not Null,
	HireDate	Date			Not Null,
	DeptNo		Decimal		(2, 0)	Not Null,
	PayRate		Decimal		(4, 2)	Not Null,
	CommRate	Decimal		(3, 3)	Not Null);

--2
Insert Into Guadarrama.SalesRep
	Values(99001,
		'Robert',
		'W',
		'Grant',
		'M',
		'1978-05-20',
		'2001-01-14',
		11,
		15.25,
		.120);

--3
Insert Into Guadarrama.SalesRep
	Values(99002,
		'Jennifer',
		'A',
		'Johnson',
		'F',
		'1976-07-30',
		'2001-02-22',
		11,
		15.25,
		.115);

--4
Insert Into Guadarrama.SalesRep
	Values(99003,
		'Kelly',
		'L',
		'Short',
		'F',
		'1974-12-07',
		'2001-03-08',
		22,
		15.25,
		.110);

--5
Insert Into Guadarrama.SalesRep
	Values(99004,
		'Colin',
		'J',
		'LeCates',
		'M',
		'1980-06-11',
		'2003-04-04',
		33,
		13.75,
		.085);

--6
Insert Into Guadarrama.SalesRep
	Values(99005,
		'Rex',
		'',
		'Henderson',
		'M',
		'1981-11-22',
		'2003-03-31',
		44,
		13.50,
		.085);

--7
Insert Into Guadarrama.SalesRep
	Values(99006,
		'Sandra',
		'E',
		'Harper',
		'F',
		'1974-12-07',
		'2004-02-11',
		22,
		13.25,
		.070);

--8
Insert Into Guadarrama.SalesRep
	Values(99007,
		'Randy',
		'W',
		'Zimmerman',
		'M',
		'1984-08-13',
		'2006-10-20',
		44,
		12.75,
		.065);

--9
Insert Into Guadarrama.SalesRep
	Values(99008,
		'William',
		'',
		'Smithfield',
		'M',
		'1982-09-26',
		'2007-06-30',
		55,
		12.50,
		.065);

--10
Insert Into Guadarrama.SalesRep
	Values(99009,
		'Jessica',
		'T',
		'Barnes',
		'F',
		'1989-04-16',
		'2009-07-01',
		33,
		12.00,
		.050);

--11
Insert Into Guadarrama.SalesRep
	Values(99010,
		'Jeremy',
		'D',
		'Evans',
		'M',
		'1981-08-13',
		'2009-12-12',
		55,
		11.75,
		.050);

--12
Insert Into Guadarrama.SalesRep
	Values(99011,
		'Amanda',
		'R',
		'Holliston',
		'F',
		'1988-04-16',
		'2010-01-04',
		66,
		10.50,
		.045);

--13
Select * From Guadarrama.SalesRep;