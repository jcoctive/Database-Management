
--1
select name, city
from customers
where city in (select city
               from products
               group by city
               order by count(city) DESC
               limit 1);

--2
select name
from products 
where priceUSD > (select avg(priceUSD)
                    from products)
order by name DESC;

--3
select c.name, o.pid, o.totalUSD
from orders o inner join customers c on o.cid = c.cid
order by o.totalUSD ASC;

--4
select name, coalesce(sum(o.totalUSD), 0) as "total"
from orders o right outer join customers c on o.cid = c.cid
group by name;

--5
select c.name,
	p.name,
       a.name
from orders o inner join customers c on o.cid = c.cid
	 		  inner join products p on o.pid = p.pid
     		  inner join agents a on o.aid = a.aid
where a.city = 'Newark';

--6
select *
from (select o.*,
      o.qty*p.priceUSD*(1-(c.discount/100)) as actualPriceUSD
      from orders o inner join products p on o.pid = p.pid
      				inner join customers c on o.cid = c.cid) as temptable
where totalUSD != actualPriceUSD;
