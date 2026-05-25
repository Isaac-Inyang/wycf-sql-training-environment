-- removing irrelevant rows
DELETE FROM employees
WHERE employee_key = '0';

-- checking for uniqueness
SELECT employee_key, COUNT(*)
FROM employees
GROUP BY employee_key
HAVING count(*) > 1;

-- changing data type of keys and adding a primary key
ALTER TABLE employees
ALTER COLUMN employee_key TYPE INTEGER USING employee_key::INTEGER,
ALTER COLUMN wwi_employee_id TYPE INTEGER USING wwi_employee_id::INTEGER,
ADD PRIMARY KEY (employee_key);

-- checing for duplicates
SELECT employee, wwi_employee_id, is_salesperson, COUNT(*)
FROM employees
GROUP BY employee, wwi_employee_id, is_salesperson
HAVING count(*) > 1;

SELECT *
FROM employees;

