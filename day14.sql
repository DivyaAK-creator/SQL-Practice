use business;
create table Department(
department_id int primary key,
department_name varchar(30)
);
create table students(
student__id int primary key,
name varchar(40),
age int,
department_id int,
foreign key(department_id)
references
Department(department_id)
);

insert into Department(department_id,department_name)
values(1,'Computer Science'),
(2,'Mechanical'),
(3,'Civil');
insert into students
value(101,'Ravi',20,1),
(102,'Divya',19,1),
(103,'Arjun',21,2);
select * from students;
select students.name,
Department.department_name
from students
join Department
on students.department_id =
Department.department_id;