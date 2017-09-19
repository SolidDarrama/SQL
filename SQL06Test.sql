--Jose Guadarrama
--10.16.2014

--1
Select * From Guadarrama.Clients;

--2
Select * From Guadarrama.Clients
Where State In ('DE');

--3
Select * From Guadarrama.Clients
Where BalDue > 0;

--4
Select * From Guadarrama.Clients
Where BalDue <= 100;

--5 
Select City 
As "Client Cities"
From Guadarrama.Clients
Order By "Client Cities";

--6
Select Count (ClientNo) 
ConCat' data rows in the Clients table.' 
As "Number of Clients"
From Guadarrama.Clients;

--7
Select Sum(BalDue)
ConCat' is the sum of the Balance Due column in the Clients table.'
As "Sum of Balance Due"
From Guadarrama.Clients;

--8
Select Avg(BalDue)
ConCat' is the average of the Balance Due column in the Clients table.'
As "Average of Balance Due"
From Guadarrama.Clients;

--9
Select ClientNo, Name, City
From Guadarrama.Clients
Where City In ('Salisbury');

--10
Select Name, City, State, BalDue
From Guadarrama.Clients
Where State In ('DE') And 
BalDue = 0;

--11
Select * From Guadarrama.Orders;

--12
Select * From Guadarrama.Orders
Where SaleDate <= '2014-08-10';

--13
Select * From Guadarrama.Orders
Where ClientNo In (10001, 10007, 10015);

--14
Select * From Guadarrama.Orders
Where SaleDate + 2 Days = ShipDate;


--15
Select OrderNo, ClientNo, InvoiceAmt,
Case 
When InvoiceAmt < 250 Then 'Small'
When InvoiceAmt < 1000 Then 'Medium'
Else 'Large'
End As "Order Class"
From Guadarrama.Orders;
