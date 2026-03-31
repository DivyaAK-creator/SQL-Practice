use business;
create table accounts(
id int,
name varchar(50),
balance int
);
insert into accounts
value(1,'A',5000),
(2,'B',3000);

set autocommit  = 0;
start transaction;
set sql_safe_updates = 0;
update accounts
set balance = balance-1000 where 
id =1;
update accounts
set balance = balance +1000 where
id =2;
select*from accounts;
-- for undo
rollback;
-- for permanent save
commit;
set autocommit = 1;
update accounts 
set balance = balance + 1000
where id = 1;
select*from accounts;

