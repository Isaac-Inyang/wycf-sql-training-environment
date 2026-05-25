SELECT * FROM city;

-- changing datatype and adding primary key
ALTER TABLE city
	ALTER COLUMN city_key TYPE INTEGER USING city_key::integer,
	ADD PRIMARY KEY (city_key);

SELECT * FROM city;