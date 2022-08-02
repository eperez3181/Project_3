DROP TABLE population_2019

CREATE TABLE population_2019(
	row INT PRIMARY KEY,
	country VARCHAR(50),
	year INTEGER,
	population INTEGER,
	male_population INTEGER,
	female_population INTEGER,
	annual_growth_rate FLOAT
);

DROP TABLE population_2020

CREATE TABLE population_2020(
	row INT PRIMARY KEY,
	country VARCHAR(50),
	year INTEGER,
	population INTEGER,
	male_population INTEGER,
	female_population INTEGER,
	annual_growth_rate FLOAT
);

DROP TABLE population_2021

CREATE TABLE population_2021(
	row INT PRIMARY KEY,
	country VARCHAR(50),
	year INTEGER,
	population INTEGER,
	male_population INTEGER,
	female_population INTEGER,
	annual_growth_rate FLOAT
);

DROP TABLE population_2022

CREATE TABLE population_2022(
	row INT PRIMARY KEY,
	country VARCHAR(50),
	year INTEGER,
	population INTEGER,
	male_population INTEGER,
	female_population INTEGER,
	annual_growth_rate FLOAT
);

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