use company;
create table employees(
emp_id int primary key auto_increment,
emp_name varchar(50),
department varchar(50),
salary int,
joining_date date);

insert into employees(emp_name,department,salary,joining_date)
values ('Ravi Sharma ','IT',60000,'2022-05-10'),
('Anita Singh','HR',45000,'2023-01-15'),
('Vikram Patel','IT',70000,'2021-11-20'),
('Sneha Reddy','Finance',50000,'2022-08-05'),
('Arjun patil','IT',65000,'2023-03-11');

-- Mini Tasks for Function
select upper(emp_name) from employees;
select emp_name, substring(emp_name,1,3) from employees;
select emp_name, year(joining_date) as joining_year
from employees;
select emp_name,department,length(department)
from employees;
select emp_name, year(joining_date) from employees
where year(joining_date) = 2023;
select emp_name,salary,
if (salary>60000 ,'high bonus','Norma bonus')
as bonus 
from employees;
