use Computer_Manufactures;

select * from products

-- 1.	Select the names of all the products in the store --
select Name from products

-- 2.	Select the names and the prices of all the products in the store --
select Name, Price from products

-- 3.	Select the name of the products with a price less than or equal to $200 --
select Name, price from products
where price<=200

-- 4.	Select all the products with a price between $60 and $120 --
select * from products
where price between 60 and 120


-- 5.	Select the name and price in cents (i.e., the price must be multiplied by 100) --
select Name, price * 100 from products

select * from products

alter table products
add Price_cent int

update products
set Price_cent=(100*price)

select * from products

-- 6.	Compute the average price of all the products --
select Name, avg(price) from products
group by Name

-- 7.	Compute the average price of all products with manufacturer code equal to 2 --
select Name, manufacturer, avg(price) from products
where manufacturer=2
group by Name

-- 8.	Compute the number of products with a price larger than or equal to $180 --
select count(*) from products
where price>=180

-- 9.	Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order). --
select Name, price from products
where price>=180
order by price desc, Name


-- 10.	Select all the data from the products, including all the data for each product's manufacturer --
select * from products

select * from manufacturers

select * from products p
inner join manufacturers m
on p.manufacturer=m.code

-- 11.	Select the product name, price, and manufacturer name of all the products --
select products.Name, price, manufacturers.Name
from products
inner join manufacturers 
on products.manufacturer=manufacturers.code

select products.name, price, manufacturers.name
from products, manufacturers
where products.manufacturer=manufacturers.code

-- 12.	Select the average price of each manufacturer's products, showing only the manufacturer's code --
select avg(price), manufacturer from products
group by manufacturer

-- 13.	Select the average price of each manufacturer's products, showing the manufacturer's name --
select avg(price), manufacturers.Name
from products
inner join manufacturers 
on products.manufacturer=manufacturers.code
group by manufacturers.Name

-- 14.	Select the names of manufacturer whose products have an average price larger than or equal to $150 --
select avg(price), manufacturers.Name
from products
inner join manufacturers 
on products.manufacturer=manufacturers.code
group by manufacturers.Name
having avg(price)>=150

-- 15.	Select the name and price of the cheapest product --
select name, price from products
order by price
limit 1

-- 16.	Select the name of each manufacturer along with the name and price of its most expensive product -- 
select name, price from products
order by price desc
limit 1

select products.name, products.price, manufacturers.name
from products
inner join manufacturers
on products.manufacturer=manufacturers.code
and products.price=
(select max(products.price) from products
where products.manufacturer=manufacturers.code)

-- 17.	Add a new product: Loudspeakers, $70, manufacturer 2 -- 
insert into products(code, name, price, manufacturer)
values(11, 'Loudspeaker', 70, 2)

select * from products

-- 18.	Update the name of product 8 to "Laser Printer" --
update products
set name='Laser Printer'
where code=8

-- 19.	Apply a 10% discount to all products --
update products
set price=price-(price*0.1)

-- 20.	Apply a 10% discount to all products with a price larger than or equal to $120.
update products
set price=price-(price*0.1)
where price>=120