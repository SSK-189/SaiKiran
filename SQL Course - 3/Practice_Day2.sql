create database Practice_day2

use Practice_day2

-- loading the data from a csv file 

select * from emp_table

select first_name, last_name from emp_table

-- order is to sort the data in ascending order
select * from emp_table
order by salary 

select * from emp_table
order by salary desc

-- fetch the first_name and last_name of the employees sorted by 
-- emp_rating

select first_name, last_name from emp_table
order by emp_rating

-- limit 
-- this is used to fetch limited rows

select * from emp_table
limit 3

select first_name, last_name, salary from emp_table
limit 3

-- fetch the data of top 3 employees highest salary

select * from emp_table
order by salary desc
limit 3

-- distinct clause -- to get the unique values

select distinct dept from emp_table

-- where clause -- 

select * from emp_table
where dept='retail'

-- fetch the data of the employee with rating >3

select * from emp_table
where emp_rating>3

-- where we can also use and/or operator
-- and is used to ensure both conditions are true
-- or is used to check atleast one conditions is true

select * from emp_table
where emp_rating>3 and dept='retail'

select * from emp_table
where emp_rating>3 and dept='retail' and role='manager'

select * from emp_table
where emp_rating>4 and dept='All' and role='manager'

select * from emp_table
where emp_rating>3 or dept='retail'

select * from emp_table
where emp_rating>4 or dept='ceo'

select * from emp_table
where emp_rating>3 and dept='ceo'

-- fetch the data of employees working in retail and automotive

select * from emp_table
where dept='retail' or dept='automotive'

-- in operator is like applying or for same column

select * from emp_table
where dept in ('retail', 'automotive')

-- fetch data of top 3 highest employees from retail dept
-- with highest salaries

select * from emp_table
where dept='retail'
order by salary desc
limit 3

-- DML queries - 
-- DDL - data definition language
	-- create
    -- alter
    -- drop
 -- DML queries - data manupulation language
	-- insert
    -- update
    -- delete
    
select * from emp_table

update emp_table 
set dept='FINANCE'
where emp_id='E260' and 'E612'
    
update emp_table 
set dept='FINANCE'
where emp_id='E612'

select * from emp_table

-- delete data from table 

delete from emp_table
where emp_id='E245' and 'E403'

select * from emp_table

delete from emp_table
where emp_id='E245'

select * from emp_table

delete from emp_table
where emp_id in ('E620', 'E505')

select * from emp_table