-- SELECT sale_key::int, COUNT(*)
-- FROM sales 
-- GROUP BY sale_key::int
-- HAVING COUNT(*) > 1
-- LIMIT 20;

-- DELETE FROM sales
-- 	WHERE customer_key::int = 0 OR bill_to_customer_key::int =0;

-- ALTER TABLE sales
-- 	ALTER COLUMN sale_key TYPE INTEGER USING sale_key::integer,
-- 	ALTER COLUMN city_key TYPE INTEGER USING city_key::integer,
-- 	ALTER COLUMN stock_item_key TYPE INTEGER USING stock_item_key::integer,
-- 	ALTER COLUMN salesperson_key TYPE INTEGER USING salesperson_key::integer,
-- 	ALTER COLUMN wwi_invoice_id TYPE INTEGER USING wwi_invoice_id::integer,
--	ALTER COLUMN customer_key TYPE INTEGER USING customer_key::integer,
--	ALTER COLUMN bill_to_customer_key TYPE INTEGER USING bill_to_customer_key::integer,
-- 	ADD PRIMARY KEY (sale_key);

-- creating foreign keys
ALTER TABLE sales
	ADD CONSTRAINT fk_city FOREIGN KEY (city_key) REFERENCES city (city_key),
	ADD CONSTRAINT fk_stock_item FOREIGN KEY (stock_item_key) REFERENCES stock_item (stock_item_key),
	ADD CONSTRAINT fk_salesperson FOREIGN KEY (salesperson_key) REFERENCES employees (employee_key),
	ADD CONSTRAINT fk_customer FOREIGN KEY (customer_key) REFERENCES customers (customer_key);


SELECT *
FROM sales
-- WHERE customer_key::int = 0 AND bill_to_customer_key::int =0
LIMIT 10
;

