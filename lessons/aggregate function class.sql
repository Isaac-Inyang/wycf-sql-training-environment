SELECT *
FROM sales
LIMIT 10;

-- getting aveage salary of employees
SELECT AVG(salary) AS avg_salary
FROM employees_2;

-- what is the highest salary
SELECT MAX(salary) AS highest_salary
FROM employees_2;

-- what is the lowest salary
SELECT MIN(salary)
FROM employees_2;

-- find the highest salary per departemnt, order it from the highest to the lowest
SELECT department, MAX(salary) AS highest_salary
FROM employees_2
GROUP BY department
ORDER BY highest_salary DESC;

-- find the average salary per department
-- find the sum of id per employees in each department
SELECT name, department, SUM(id) as total_id
FROM employees_2
GROUP BY name, department
ORDER BY name ASC, total_id DESC;


-- find the sum of id per employees in each department excluding Bob
SELECT name, department, SUM(id) as total_id
FROM employees_2
WHERE name <> 'Bob' 
GROUP BY name, department
ORDER BY name ASC, total_id DESC;

