use business;
CREATE TABLE sales(
id INT,
salesperson VARCHAR(20),
product VARCHAR(20),
city VARCHAR(20),
amount INT
);
INSERT INTO sales VALUES
(1,'Ravi','Laptop','Bangalore',60000),
(2,'Anu','Phone','Chennai',20000),
(3,'Ravi','Mouse','Bangalore',1000),
(4,'Raj','Laptop','Delhi',62000),
(5,'Meena','Phone','Mumbai',21000),
(6,'Anu','Laptop','Chennai',58000),
(7,'Ravi','Phone','Bangalore',22000),
(8,'Raj','Mouse','Delhi',1200);
SELECT salesperson, SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson;
SELECT product, AVG(amount) AS avg_sales
FROM sales
GROUP BY product;
SELECT salesperson, SUM(amount) AS total_sales
FROM sales
GROUP BY salesperson
HAVING SUM(amount) > 70000;
SELECT city, count(product) AS total_products
FROM sales
GROUP BY city;

