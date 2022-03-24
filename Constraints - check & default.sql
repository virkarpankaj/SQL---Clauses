create table emp_def_check(
Emp_id int primary key auto_increment,
age int check (age>=18),
country Varchar(50) default 'India'
);

select * from emp_def_check;

insert into emp_def_check values 
(101,22,'Israel');

insert into emp_def_check(Emp_id, age)
values (null, 27);                      -- country by default India, Emp_id -- auto increment 

