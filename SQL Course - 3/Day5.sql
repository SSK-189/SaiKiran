use store1

-- functions--
-- Numberic fuctions ( sum, min, max, avg, count) --
-- ceil, floor, round ---
-- ceils - it rounds up the number --
-- floor - it rounds down the number --
-- round - it rounds down/up depends upon the decimal of the number --

select * from tbl_orders

select sales, ceil(sales) from tbl_orders

select sales, floor(sales) from tbl_orders

select sales, round(sales,1) from tbl_orders

select sales, ceil(sales), floor(sales), round(sales,1) from tbl_orders

-- text functions --
-- left, right, length, substr, locate --

select `customer name` from tbl_orders

-- length function --
select `customer name`, length(`customer name`) from tbl_orders

-- left function --
select `customer name`, length(`customer name`),
left(`customer name`, 3)
from tbl_orders

-- right function --
select `customer name`, length(`customer name`),
left(`customer name`, 3), right(`customer name`, 3)
from tbl_orders

-- substr function extract something from middle --
select `customer name`, length(`customer name`),
left(`customer name`, 3), right(`customer name`, 3),
substr(`customer name`, 3,2)
from tbl_orders

select `customer name`, length(`customer name`),
left(`customer name`,3), right(`customer name`,3),
substr(`customer name`,4,2)
from tbl_orders

-- Locate function find space --
select `customer name`, length(`customer name`),
left(`customer name`,3), right(`customer name`,3),
substr(`customer name`,4,2),
locate(' ',`customer name`)
from tbl_orders

-- Logical function : If --
select sales, if(sales>500, 'High Sales','Low Sales') as sales_Status
from tbl_orders
-- as is an optional syntax for alias we can give or not SQl understands
select sales, if(sales>500, 'High Sales','Low Sales') sales_Status
from tbl_orders

-- greater than or equal to --
select sales, if(sales>=30, 'High Sales','Low Sales') sales_Status
from tbl_orders

-- less than --
select sales, if(sales<500, 'Low Sales','High Sales') sales_Status
from tbl_orders

-- Rank Function can be done in 2 ways asce/desc --
-- Rank Function skips the rank if you have smae scores --
-- dense_rank doesnt skip the rank --

-- rank function order by desc --
select sales, rank() over (order by sales desc) from tbl_orders

-- rank function order by asec --
select sales, rank() over (order by sales) from tbl_orders

-- dense_rank order by desc --
select sales, dense_rank() over (order by sales desc)
from tbl_orders

-- dense_rank function order by asec --
select sales, dense_rank() over (order by sales)
from tbl_orders

select sales, rank() over (order by sales desc) as Rank_sales,
dense_rank() over (order by sales desc) as Dense_Rank_sales
from tbl_orders

-- Rank separately as per gender --
select category, sales, rank() over (partition by category order by sales desc) Rank_sales,
dense_rank() over (partition by category order by sales desc) as Dense_Rank_sales
from tbl_orders

select category, sales, rank() over (partition by category order by sales desc) Rank_sales,
dense_rank() over (partition by category order by sales desc) Dense_Rank_sales
from tbl_orders

-- row_number function --
select category, sales, row_number() over (partition by category order by sales desc)
from tbl_orders

-- lead - gives you next value
-- lag - gives you previous value

select sales, lag(sales,1) over (order by sales desc)
from tbl_orders

select sales, lead(sales,1) over (order by sales desc)
from tbl_orders

select sales, lead(sales,1) over (order by sales desc)
from tbl_orders

-- lead function with partition as well --
select category, sales, lead(sales,1,0) over (partition by category order by sales desc)
from tbl_orders

select category, sales, lag(sales,1,0) over (partition by category order by sales desc)
from tbl_orders