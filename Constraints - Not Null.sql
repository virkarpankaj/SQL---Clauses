create table Employee(
ID int,
Emp_name varchar(50) not null,
age int
);
SELECT * FROM pankaj.employee;

insert into employee 
values (1,'Rohan',25);

insert into employee 
values (1,null,25)   -- we have entered the constraints as not null for Emp_name column