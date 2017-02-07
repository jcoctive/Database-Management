jeromaine octive
Lab 3


1)select ordNumber , totalUSD from Orders;


2)select name, city from Agents
  where  name = ‘Smith’ ;

3)select pid, name, priceUSD from Products;
  Where  quantity > 200100;

4)select name, city from Customers
  where city = ‘Duluth’ ;

5)select name from Products
  where city not in (‘New York’, ‘Duluth’) ;

6)select * from Agents 
  where city not in (‘Dallas’, ‘Duluth’)  and priceUSD >=  1 ;

7)select *
  from Orders
  where  month = ‘Feb’ or month = ‘May’ ;

   
8)select *
  from Orders
  where  month = ‘Feb’ and priceUSD>=600;

9)select *
  from Orders
  where cid = ‘C005’ ;



