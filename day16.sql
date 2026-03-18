-- Nested Queries
use business;
create table students(
name varchar(50),
marks int
);
insert into students
values('A',95),
('B',80),
('C',45),
('D',70);

SELECT name, marks,
CASE
    WHEN marks >= 90 THEN 'Excellent'
    WHEN marks >= 75 THEN 'Good'
    WHEN marks >= 50 THEN 'Average'
    ELSE 'Fail'
END AS grade
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);