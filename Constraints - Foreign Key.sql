# sub table will have access to thoses keys which main table contains
# ex Emp_id of main table - sub table must have emp_id from that id's only

create table Employee_foreign(
Emp_ID int Primary key,
Emp_name varchar(50),
Emp_age int
);

create table Dept(
Dept_ID int primary key,
Dept_name varchar(50),
Emp_ID int, 
Foreign key (Emp_ID) references employee_foreign(Emp_id)
);

select * from Dept;

insert into Employee_foreign values 
(101,'A',25), (102,'B',26), (103,'C',27), (104,'D',30),(105,'E',35);

select * from employee_foreign;

insert into Dept values 
(1,'Civil',102), (2,'IT',105), (3,'Mechanical', 101);

insert into Dept values 
(5,'Comp',107);                  -- error 107 not in main table

# what if entry in main table gets deleted or updated ? will it gets updated in this sub table --- YESS WE HAVE CASCADE