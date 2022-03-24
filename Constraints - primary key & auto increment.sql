create table Employee_prm_auto(
ID int primary key auto_increment,
Emp_name varchar(50),
age int
);

insert into employee_prm_auto
values (1,'Rohan',25);

insert into employee_prm_auto
values (2,null,25);           -- we can't now enter null @ ID but can enter @other 

select * from employee_prm_auto;

insert into employee_prm_auto(Emp_name,age)
values ('Ram',21)                                 -- ID with auto increment = 3

# auto increment only for numerical column