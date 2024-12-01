create database DB_Day2;

use DB_Day2


-- Loading the data from csv file 
-- 


update employee_tbl
set dept='FINANCE'
where emp_id='E260'

SELECT * FROM db_day2.employee_tbl;

-- delete E245

delete from employee_tbl
where emp_id='E245'

SELECT * FROM db_day2.employee_tbl;

delete from employee_tbl
where emp_id=in ('E403','E505')