CREATE TABLE factsale(
	sale_key TEXT,
	city_key TEXT,
	customer_key TEXT,
	bill_to_customer_key TEXT,
	stock_item_key TEXT,
	invoice_date_key TEXT,
	delivery_date_key TEXT,
	salesperson_key TEXT,
	wwi_invoice_id TEXT,
	description TEXT,
	package TEXT,
	quantity TEXT,
	unit_price TEXT,
	tax_rate TEXT,
	total_excluding_tax TEXT,
	tax_amount TEXT,
	profit TEXT,
	total_including_tax TEXT,
	total_dry_items TEXT,
	total_chiller_items TEXT,
	lineage_key TEXT
);


CREATE TABLE date (
	date TEXT,
	day_number TEXT,
	day TEXT,
	month TEXT,
	short_month TEXT,
	calendar_month_number TEXT,
	calendar_month_label TEXT,
	calendar_year TEXT,
	calendar_year_label TEXT,
	fiscal_month_number TEXT,
	fiscal_month_label TEXT,
	fiscal_year TEXT,
	fiscal_year_label TEXT,
	iso_week_number TEXT
);

CREATE TABLE customers(
	customer_key TEXT,
	wwi_customer_id TEXT,
	customer TEXT,
	bill_to_customer TEXT,
	category TEXT,
	buying_group TEXT,
	primary_contact TEXT,
	postal_code TEXT,
	credit_limit TEXT,
	valid_from TEXT,
	valid_to TEXT,
	lineage_key TEXT
);

CREATE TABLE city(
	city_key TEXT,
	city TEXT,
	state_province TEXT,
	country TEXT,
	sales_territory TEXT,
	location TEXT,
	latest_recorded_population TEXT
)
;

CREATE TABLE employees (
	employee_key TEXT,
	wwi_employee_id TEXT,
	employee TEXT,
	preferred_name TEXT,
	is_salesperson TEXT,
	photo TEXT,
	valid_from TEXT,
	valid_to TEXT,
	lineage_key TEXT
);

ALTER TABLE factsale RENAME to sales;