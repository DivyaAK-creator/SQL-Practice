-- create database 
CREATE DATABASE company_db;

-- use database 
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1,'Ranju','IT',50000),
(2,'Divya','IT',60000),
(3,'Rithesh','HR',45000),
(4,'Rakshitha','HR',70000),
(5,'Kiran','IT',55000);

-- Create Index
CREATE INDEX idx_salary
ON employees(salary);

-- Optimized Query
SELECT name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 3;

-- Compare with normal query
SELECT * FROM employees;

-- View data
SELECT * FROM employees;