-- Jose Guadarrama
-- 08.28.2014

--1
Create Table Guadarrama.Department
   (DeptNo	Decimal		(2, 0)		Not Null Primary Key,
    DeptName	Character	(35)		Not Null);

--2
Insert Into Guadarrama.Department
 Values(11,
        'Security Systems');

--3
Insert Into Guadarrama.Department
 Values(22,
        'Cameras and Digital Media');

--4
Insert Into Guadarrama.Department
 Values(33,
        'Cell Phones and PHDs');

--5
Insert Into Guadarrama.Department
 Values(44,
        'Desktops and Laptops');

--6
Insert Into Guadarrama.Department
 Values(55,
        'Printers and Copiers');

--7
Insert Into Guadarrama.Department
 Values(66,
        'Electronic Accessories');

--8
Insert Into Guadarrama.Department
 Values(77,
        'Customer Service');

--9
Select * From Guadarrama.Department;