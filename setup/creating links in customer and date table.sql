SELECT * FROM customers LIMIT 10;

-- removing missing rows
-- DELETE FROM customers
-- 	WHERE customer_key IN ('Customer Key', '0');


-- ALTER TABLE customers
-- 	ALTER COLUMN customer_key TYPE INTEGER USING customer_key::integer,
-- 	ALTER COLUMN wwi_customer_id TYPE INTEGER USING wwi_customer_id::integer,
-- 	ADD PRIMARY KEY (customer_key);
	

SELECT *
FROM date;