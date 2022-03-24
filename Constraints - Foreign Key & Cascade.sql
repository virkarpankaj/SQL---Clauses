# parent table - cant update delete records until permission from child table
create table Employee_cas(
Emp_ID int Primary key,
Emp_name varchar(50),
Emp_age int
);

# child table  
create table Dept_cas(
Dept_ID int primary key,
Dept_name varchar(50),
Emp_ID int, 
Foreign key (Emp_ID) references employee_cas(Emp_id)
on delete cascade
on update cascade
);

insert into employee_cas values 
(101,'A',25), (102,'B',26), (103,'C',27), (104,'D',30),(105,'E',35);

insert into Dept_cas values 
(1,'Civil',102), (2,'IT',105), (3,'Mechanical', 101);

select * from Dept_cas;
select * from employee_cas;

delete from employee_cas
where Emp_ID = 102;

update employee_cas
set emp_id =999
where emp_id = 101;