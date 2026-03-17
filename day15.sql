use company;
create table Employees(
emp_id int,
name varchar(50),
dept_id int);
insert into Employees
values(1,'A',10),
(2,'B',20),
(3,'C',null),
(4,'D',30);
create table Departments(
dept_id int,
dept_name varchar(50)
);
insert into Departments
values(10,'HR'),
(20,'IT');
-- INNER JOIN
select Employees.name,
Departments.dept_name
from Employees
inner join Departments
on Employees.dept_id = Departments.dept_id; 
-- LEFT JOIN
SELECT e.name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
