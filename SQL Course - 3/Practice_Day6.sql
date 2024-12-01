use store
-- subqueries --
-- A query within a query --
-- fetch the highest sales --
select max(sales) from tbl_orders

-- second highest sales -- 
select max(sales) from tbl_orders
where sales <(select max(sales) from tbl_orders)

-- third highest sales --
select max(sales) from tbl_orders
where sales <(
select max(sales) from tbl_orders
where sales <(select max(sales) from tbl_orders))

-- 10th highest sales / use rank --
select sales from tbl_orders
order by sales desc
limit 10

select * from(
select sales from tbl_orders
order by sales desc
limit 10) as t
order by sales
limit 1

-- fetch the % of sales happend in each category

select category, sum(sales) from tbl_orders
group by category

select sum(sales) from tbl_orders

select category, round((sum(sales)/(select sum(sales) from tbl_orders))*100,2) percentage from tbl_orders
group by category

