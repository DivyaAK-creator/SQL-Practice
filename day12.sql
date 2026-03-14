use company;
create table employees(
id int primary key auto_increment,
name varchar(50),
department varchar(30),
salary int);

insert into employees(name,department,salary)
values('Ram','IT',40000),
('Sita','HR',30000),
('John','IT',45000),
('Ravi','HR',35000),
('Asha','Sales',50000);
select department,sum(salary)
from employees
group by department;
select department,sum(salary)
from employees
group by department
having sum(salary)>70000;

use business;
create table students(
id int,
name varchar(20),
department varchar(20),
marks int);
insert into students(id,name,department,marks)
values(1,'Rama','CSE',85),
(2,'Priya','CSE',90),
(3,'Anil','ECE',70),
(4,'Meena','ECE',60),
(5,'Rohit','CSE',75);
select department,avg(marks)
from students
group by department;
select department,avg(marks)
from students
group by department
having avg(marks)>75;