SELECT * FROM business.students;
alter table students
add course varchar(50);
select * from students;
insert into students values
(3,'Anitha',65,'CSE'),
(4,'Kiran',90,'ECE'),
(5,'Ravi',40,'ECE'),
(6,'Meena',75,'MECH');
select * from students;
update students
set course ='CSE'
where id = 1;
set sql_safe_updates = 0;
update students
set course ='CSE'
where id = 2;
select * from students;
select count(*)
from students;
select avg(marks)
from students;
select
max(marks) as highest_marks,
min(marks) as lowest_marks
from students;
select * from students;