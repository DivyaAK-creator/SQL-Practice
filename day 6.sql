
create database company;
use company;
create table employees(
-- primary key uniquely identify each row
emp_id int primary key,
-- not null mean without emp_name error
emp_name varchar(50) not null,
-- unique allow null but each column shouls be different
email varchar(50) unique,
-- default autometically insert default value
salary int default 30000
);
insert into employees (emp_id,emp_name,email)
values(3,'Arun','AR@123'),
(4,'Kavitha','KA@132');
select * from employees;
