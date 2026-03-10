use business;
create table neighbour(
id int primary key auto_increment,
name varchar(50),
email varchar(50),
starting_year date
);
insert into neighbour(name,email,starting_year) values
('Radhika','RD@123','2010-02-02'),
('Vikram','VK@123','2007-03-09'),
('Showri','SH@123','2000-11-30');
-- challenges
select concat(UPPER(name),' is living from ',starting_year)
from neighbour;

select substring(name,1,2)
from neighbour;

select length(name) 
from neighbour;

select year(starting_year)
from neighbour;

select concat(name,' Joined in ',year(starting_year))
from neighbour;