use store

-- fetch the customername, category and sales from order 

select customername, category, sales from tbl_orders

select `customer name`, category, sales from tbl_orders

-- fetch the completed data sorted by sales in desc order
select * from tbl_orders
order by sales desc

-- fetch the top 5 sales
select * from tbl_orders
order by sales desc
limit 5

-- fetch unique regions
select distinct Region from tbl_orders

-- fetch the total sales
select sum(sales) from tbl_orders

-- '2272449.8562999545'

-- fetch the average sales
select avg(sales) from tbl_orders

-- '234.41818199917006'

-- update the region of west to New west
select * from tbl_orders
update tbl_orders 
set region='New west'
where region='west'

select * from tbl_orders

-- delete the data of the category furniture 

select * from tbl_orders
delete from tbl_orders
where category='furniture_new'

select * from tbl_orders

-- add a permanent column of bonus which is 10% of sales

alter table tbl_orders
add Bonus int

update tbl_orders
set bonus=0.1*sales

 



