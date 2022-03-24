# Unique Key - does not allows Duplicate entry
#                         Allows Null Value

create table Employee_unq(
ID int unique,
Emp_name varchar(50),
age int
);

insert into employee_unq
values (1,'Rohan',25);

insert into employee_unq
values (2,null,25);              -- we can now enter null @ name

select * from employee_unq;

insert into employee_unq
values (1,'Mayur',25) ;     -- ID should be unique

insert into employee_unq
values (null,'Pankaj',25);              -- Can be Null