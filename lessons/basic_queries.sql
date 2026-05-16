-- displaying all column names
SELECT *
FROM employees;

-- displaying names of employees
SELECT name
FROM employees;

-- selecting multiple columns
SELECT name, department, salary
FROM employees;

-- applying limit to table
-- selecting 10 employees' name
SELECT name, department
FROM employees
LIMIT 20;

-- use of count and aliasing
SELECT count(*) AS number_of_records
FROM employees;

