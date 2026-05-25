-- find employees whose salary is above 80,000
SELECT * 
FROM employees
WHERE salary > 80000
;

-- find employees whose salary is between 80,000 and 100,000
SELECT *
FROM employees
WHERE salary > 80000 AND salary < 100000;

-- find empoyees whose sum of id and salary is greater 90,000
SELECT *
FROM employees
WHERE ( id + salary) > 90000;

-- >= greater than or equal to
-- <= 

SELECT COUNT( * )
FROM employees
WHERE ( id + salary) > 90000;

-- list names of employees that begin with letter A
SELECT name
FROM employees
-- WHERE name LIKE 'B%';
-- WHERE name LIKE 'a%';
WHERE name ILIKE 'a%';

SELECT DISTINCT name, department
FROM employees
WHERE name LIKE 'A%';



