DROP TABLE global_data

CREATE TABLE global_data(
	id SERIAL,
	country VARCHAR(50),
	region VARCHAR(50),
	total_cases INTEGER,
	cases_in_last_7days INTEGER,
	cases_in_last_24hrs INTEGER,
	total_deaths INTEGER,
	deaths_in_last_7days INTEGER,
	deaths_in_last_24hrs INTEGER
);

DROP TABLE timeline_data
;

CREATE TABLE timeline_data(
	id SERIAL,
	country VARCHAR(50),
	date VARCHAR (50),
	confirmed_cases INTEGER,
	confirmed_deaths INTEGER,
	population INTEGER
);