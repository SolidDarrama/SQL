--Jose Guadarrama
--11/13/2014

--1
Select CustNo, 
           CustName, 
           Discount
From Guadarrama.Customer
Where Discount >= (Select Avg(Discount) From Guadarrama.Customer);

--2
Select CustTable.CustNo,
       CustTable.CustName,
       CustTable.Discount
From Guadarrama.Customer As CustTable
Where CustTable.Discount > .10 And 10000 <=  (Select Sum(InvoiceAmt) 
From Guadarrama.SalesTrans As TransTable
Where  CustTable.CustNo = TransTable.CustNo);

--3
Select CustTable.CustNo,
       CustTable.CustName
From Guadarrama.Customer As CustTable
Where Not Exists
(Select * 
	From Guadarrama.SalesTrans As TransTable
	Where CustTable.CustNo = TransTable.CustNo);

--4
Select CurCustomer.CustName,
       CurCustomer.City
From Guadarrama.Customer As CurCustomer
Where Exists
(Select * 
              From Guadarrama.SalesTrans As CurSalesTrans
              Where CurCustomer.CustNo = CurSalesTrans.CustNo And
	      CurSalesTrans.InvoiceAmt > (Select avg(InvoiceAmt)
        From Guadarrama.Customer As AvgCustomer
	join
	Guadarrama.SalesTrans As AvgSalesTrans
	On CurCustomer.CustNo = CurSalesTrans.CustNo
        Where AvgCustomer.City = CurCustomer.City));



--5
Select City, MinDiscount, MaxDiscount
                    From(Select City,                      
                                Min(Discount) As MinDiscount,
                                Max(Discount) As MaxDiscount 
                    From Guadarrama.Customer                      
                    Group By City ) As CityMinMax
	   Where MinDiscount <= .10 
	   And MaxDiscount >= .15;

--6
Select City,                            
           Min(Discount) As MinDiscount,
           Max(Discount) As MaxDiscount
           From Guadarrama.Customer
           Group By City                    
           Having Min(Discount) <= .10 
           And Max(Discount) >= .15;

--7
Update Guadarrama.Customer
       Set Balance = Balance - (Select AmtPaid
       From Guadarrama.Payments
	Where Customer.CustNo = Payments.CustNo)
       Where Customer.Balance > 0;