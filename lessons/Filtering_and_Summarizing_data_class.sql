-- FILTERING
SELECT name
FROM employees
WHERE department = 'Operations';

-- FILTERING NUMBERS
-- integer is for whole number
-- string is for text or character

-- we cant add a string to integer
-- 10 + 10, 'Grace' + 'Mercy'

-- > , <, >=, <=, <>, = mathermatical operators

-- example: show the department and salary of employees that earn above 80,000
SELECT name, department, salary
FROM employees
WHERE salary > 80000;

-- filtering with more than one condition
-- example2: Find the names of employees in IT department, whose salary is above 80,000

SELECT name
FROM employees
WHERE department = 'IT' AND salary > 80000; -- Logical statemtents e.g, AND OR NOT

-- FILTERING TEXT
-- working string data type
-- e.g "10", 'name', 'CHN109'

-- undwerscore (_), percentage sign(%)
-- _ represents a character e,g, A, B ,C, *, 8,2
-- % can represent a word or combination of characters

-- '%e' this means word or list of characters ending with e
-- 'e%' means word or list of characters begining letter e
-- '%e%' 

-- _e means word ending with e, or any single before e e.g, Te, He, Se
-- '___T' means three characters before T e.g, mhet, meaT,
-- 'Dan_' means any charceter after Dan e.g Dane, Dan1

-- '___T%' means records where the first four charcaters is T e.g Meat is good, MeeTing, CHNT100

-- wildcards _ and %

-- LIKE, ILIKE,  IN, = FILTER OPERATION FOR TEXT data type
-- select all records whose name ends with e
SELECT * 
FROM employees
-- WHERE name LIKE '%e';
WHERE name LIKE '%ce';

-- show the names of employees in IT, Operations, Sales
SELECT name, department
FROM employees
WHERE department IN ('IT', 'Operations', 'Sales');
-- WHERE department LIKE 'IT' OR department LIKE 'Operations' OR department LIKE 'Sales';

-- NOT LIKE means Not equal to

-- select all records whose name doesn't end with e 
SELECT * 
FROM employees
-- WHERE name NOT LIKE '%e';
WHERE name NOT LIKE '%ce';





-- AGGREGATION/ SUMMARY
-- SUM()- total 
-- COUNT() means number of rows
-- AVG() IS THE MEAN OF DATA SET
-- MIN() smallest or lowest value
-- MAX() highest or largest value

-- select the total salary in the company
SELECT SUM(salary) AS total_salary  
FROM employees;
-- $8,273,480 total amount earned in the company

-- select highest salary earned in the company
SELECT MAX(salary) AS max_salary
FROM employees;
-- $118,607 the maximum salary earned

-- select avg salary in the company
SELECT AVG(salary) AS avg_salary
FROM employees;

-- ROUNDING UP A RESULT
-- ROUND(salary, number of decimal places)
-- ROUND(salary, 0) means whole number
-- ROUND(salary, 2) means round to two decimal places

-- CALCULATE THE AVG SALARY IN THE COMPANY. ROUND TO TWO DECIMAL PLACES
SELECT ROUND(AVG(salary) , 2) AS avg_salary
FROM employees;

-- GROUPING RESULTS
-- we can find total salry earned per department
-- we can count the number of employees per department

-- find total salry earned per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
;

-- count the number of employees per department
SELECT department, COUNT(*) AS no_of_employees
FROM employees
GROUP BY department;

-- ORDER BY this is use to sort our records or results
-- we want the top 3 highest paying department in the company
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC -- DESC means descending
LIMIT 3;

-- SORT IN ASCEDNING MEANING LOWEST TO HIGHEST
-- ASC
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary ASC ;

-- get the name of employees in ascending order and salary in descending order
SELECT name, salary
FROM employees
ORDER BY name ASC, salary DESC;


-- get the total salary of alice per department
SELECT department, SUM(salary) AS total_salary
FROM employees
WHERE name = 'Alice'
GROUP BY department
ORDER BY total_salary DESC;
-- LIMIT 1

-- QUERY ORDER
-- SELECT - FROM - WHERE - GROUP BY - ORDER BY - LIMIT

-- program order
-- FROM - WHERE - SELECT - GROUP BY - ORDER BY - LIMIT


















