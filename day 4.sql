-- challenge 1
create database business;
use business;
create table orders(
order_id int,
customer varchar(50)
);
insert into orders values
(1,'amit'),
(2,'Rahul'),
(3,'Amit'),
(4,'Priya');
select * from orders;
select distinct customer
from orders;
-- challenge 2
use business;
create table products(
id int ,
product varchar(50),
price int
);
insert into products values
(1,'Laptop',50000),
(2,'Mobile',20000),
(3,'Tablet',15000);
update products 
set price = 22000
where id = 2;
select * from products;
-- turn off safe update mode 
set sql_safe_updates = 0;
-- challenge 3
use business;
create table students(
id int,
name varchar(50),
marks int);
insert into students values
(1,'Amit',40),
(2,'Rahul',80),
(3,'Priya',35);
delete from students
where marks < 40;
select * from students;

