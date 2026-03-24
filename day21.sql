create database company_db4;
use company_db4;
create table  Employees(
emp_id int primary key auto_increment,
name varchar(30),
dept_id int
);
insert into Employees(name,dept_id)
values('Dayana',10),
('Dhanya',20),
('Sthuthi',30),
('Muskan',40),
('Ram',null);
create table Departments(
dept_id int,
dept_name varchar(20)
);
insert into Departments
values(10,'IT'),
(20,'HR'),
(null,null),
(40,'IT');
create table Salaries(
emp_id int,
salary int
);
insert into Salaries
values(1,30000),
(2,70000),
(3,null),
(4,20000),
(5,null);

select distinct Employees.name,Departments.dept_name,
Salaries.salary
from Employees
left join Departments
on Employees.dept_id=
Departments.dept_id
left join Salaries
on Employees.emp_id=
Salaries.emp_id;

SELECT e.name, d.dept_name, MAX(s.salary)
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id
LEFT JOIN Salaries s ON e.emp_id = s.emp_id
GROUP BY e.name, d.dept_name;

SELECT *
FROM (
    SELECT e.name, d.dept_name, s.salary,
           ROW_NUMBER() OVER (PARTITION BY e.emp_id ORDER BY s.salary DESC) AS rn
    FROM Employees e
    LEFT JOIN Departments d ON e.dept_id = d.dept_id
    LEFT JOIN Salaries s ON e.emp_id = s.emp_id
) t
WHERE rn = 1;