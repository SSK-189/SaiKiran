-- create summaries 

use store1

select * from tbl_orders

select category,sum(sales) from tbl_orders
group by category

-- Furniture_New	733046.8612999996
-- 'Office Supplies', '703502.9280000031'
-- 'Technology', '835900.0669999964'

-- avg of sale by region

select Region, avg(sales) from tbl_orders
group by Region

-- South	246.34805889803695
-- West	230.2263131655374
-- Central	220.2658729203543
-- East	243.90205152394708

select region, category,sum(sales) from tbl_orders
group by region, category

select region, category,sum(sales) from tbl_orders
group by region, category
order by region

select region, category, avg(sales) from tbl_orders
group by region, category
order by region

use store1

-- Fetch the Average sales, min profit and max profit by region and segment sorte
-- region and segment
select * from tbl_orders

select region, segment, avg(sales), min(profit), max(profit) from tbl_orders
group by region, segment
order by region, segment

-- intersect gives common data from different tables
-- except gives the data present only in first table 
-- union all 
-- union

create table tbl1
(ID int, Ename char);

insert into tbl1
values(1,'A'),(2,'B'),(3,'C'),(4,'D');

create table tbl2
(ID int, Ename char);

insert into tbl2
values(4,'D'),(5,'E'),(6,'F');

-- union all --

select * from tbl1
union all
select * from tbl2

select * from tbl2
union all
select * from tbl1

-- union --
select * from tbl1
union
select * from tbl2

select * from tbl2
union
select * from tbl1

-- Except --
select * from tbl1
except
select * from tbl2

-- Except --
select * from tbl2
except
select * from tbl1

-- Intersect --
select * from tbl1
intersect
select * from tbl2

-- task fetch order Id's that were not returned

select * from tbl_orders

select * from returns

select * from tbl_orders
select `order id` from tbl_orders
except
select `order id` from returns

-- inner join it gives common data b/w the tables
-- full join complete data from both tables
-- left join complete data from left table and matching data from right table
-- Right join complete data from right table and matching data from left table

create table tbl_age
(ID int, Age int);

insert into tbl1
values(1, 21),(2,22),(3,23),(4,24)
