create database company_db;
use company_db;
create table employees(
id int primary key auto_increment,
name varchar(50),
department varchar(50),
salary int
);
insert into employees (name,department,salary)
values 
('Ravi','IT',50000),
('Priya','HR',40000),
('Arjun','IT',60000),
('Neha','Sales',45000),
('Kiran','IT',70000),
('Anjali','HR',48000);
select * from employees;
-- challenge 1
select*
from employees
where department = 'IT' and salary > 55000;
-- challenge 2 
select*from employees
order by salary desc;
-- challenge 3
select*from employees
where not department ='HR'
order by salary desc
limit 2;

