--Jose Guadarrama
--10.7.2014

--1
Create Table Guadarrama.CreditLoan
	(CustID		Integer		Not Null Primary Key,
	LoanID		Integer		Not Null,
	LoanDate	Date		Not Null,
	AppAge	Integer		Default 18,
	Constraint InvLoanIDUK Unique (LoanID),
	Constraint InvAppAge Check (AppAge > 17));

--2
Create Table Guadarrama.Student
	(StudentNo	Decimal		(7, 0) Not Null Primary Key,
	FirstName	Character	(10)	Not Null,
	Initial		Character	(1)	Default Null,
	LastName	Character	(15)	Not Null,
	SocSecNo	Decimal		(9, 0)	Not Null,
	Gender		Character	(1)	Not Null,
	BirthDate	Date			Not Null,
	EnrollDate	Date			Not Null,
	Major		Character	(3)	Not Null,
	TotCredits	Decimal		(3, 2)	Default 0,
	GPA		Decimal		(3, 2)	Default 0.00,
	Class		Character	(2)	Not Null,
	Graduated	Character	(1)	Not Null,
	Constraint InvSocSecNoUK Unique (SocSecNo),
	Constraint InvSocSecNo Check (SocSecNo > 0 And SocSecNo < 999999999),
	Constraint InvGender Check (Gender = 'M' Or Gender = 'F'),
	Constraint InvBirthDate Check (BirthDate >= '1900-01-01'),
	Constraint InvEnrollDate Check (EnrollDate > BirthDate),
	Constraint InvMajor Check (Major = 'CIS' Or Major = 'BUS' Or Major = 'ENG' Or Major = 'MED'),
	Constraint InvClass Check (Class = 'FR' Or Class = 'SO' Or Class = 'JR' Or Class = 'SR'),
	Constraint InvGraduated Check (Graduated = 'Y' Or Graduated = 'N'));