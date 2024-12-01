-- create summaries 

use store

select * from tbl_orders

select category,sum(sales) from tbl_orders
group by category

-- 'Office Supplies', '703502.9280000031'
-- 'Technology', '835900.0669999964'

-- avg of sale by region

select Region, avg(sales) from tbl_orders
group by Region

-- New west	192.95481784232382
-- South	218.16835920000034
-- Central	187.37009451901548
-- East	214.84977255985265

select region, category,sum(sales) from tbl_orders
group by region, category

select region, category,sum(sales) from tbl_orders
group by region, category
order by region

select region, category, avg(sales) from tbl_orders
group by region, category
order by region
