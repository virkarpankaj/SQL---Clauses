# primary Key - Unique + No Null allowed, by default =0 
create table Employee_prm(
ID int primary key,
Emp_name varchar(50),
age int
);

insert into employee_prm values
 (1,'Rohan',25);

insert into employee_prm values 
(2,null,25);           -- we can't now enter null @ ID but can enter @other 

select * from employee_prm;

insert into employee_prm values 
(1,'Mayur',25);       -- ID should be unique

insert into employee_prm values 
(null,'Bhagwat',25);           -- we can't now enter null @ ID

INSERT INTO employee_prm(EMP_NAME, AGE) VALUES 
('Sachin',33) ;                      -- for 1st time it will work -- primary key is missing by default =0 for later 0 will be duplicate so cant do

INSERT INTO employee_prm(EMP_NAME, AGE) VALUES 
('Saurabha',27)                         -- error

# auto_increment