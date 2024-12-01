-- for dropping a table 

use mydata;

drop table tb_employees;


-- Break ----------------


create table tb_employees
(Empid int primary key, Ename char(40), DOJ date, Salary float
);

create table tb_employees (Empid int primary key, Ename char(40), DOJ date, Salary float )

drop table tb_employees;

create table tb_employees
(Empid int primary key, Ename char(40), DOJ date, Salary float
);



insert into tb_employees
values (1, 'Sam', '2020-01-01', 11.1), (2, 'Leo', '2021-03-01', 12.5);



-- create a table tb_departments
-- Two columns DepID int, depName char (20)


create table tb_departments
(DepID int primary key, depName char (200)
);

insert into tb_departments
values (1, 'Finance'), (2, 'HR');


insert into tb_departments
values (3, 'HR'), (4, 'Finance');

select * from tb_departments;


create table tbl_emp_mapping
(Empid int, DepID int,
foreign key(Empid) references tb_employees(Empid),
foreign key(DepID) references tb_departments(DepID)
)


insert into tbl_emp_mapping
values(1,2), (2,1);


drop table tbl_emp_mapping;

create table tbl_emp_mapping
(Empid int, DepID int,
foreign key(Empid) references tb_employees(Empid),
foreign key(DepID) references tb_departments(DepID)
);
insert into tbl_emp_mapping
values(1,2),(2,1)