SELECT * FROM population_2019;
SELECT * FROM population_2020;
SELECT * FROM population_2021;
SELECT * FROM population_2022;
SELECT * FROM global_data;

SELECT a.country, a.year, a.population, a.male_population, a.female_population, a.annual_growth_rate, w.region, w.total_cases,
	w.cases_in_last_7days, w.cases_in_last_24hrs, w.total_deaths, w.deaths_in_last_7days, w.deaths_in_last_24hrs
FROM global_data w
RIGHT JOIN population_2019 a
ON w.country = a.country

SELECT a.country, a.year, a.population, a.male_population, a.female_population, a.annual_growth_rate, w.country, w.region, w.total_cases,
	w.cases_in_last_7days, w.cases_in_last_24hrs, w.total_deaths, w.deaths_in_last_7days, w.deaths_in_last_24hrs
FROM global_data w
FULL JOIN population_2019 a
ON w.country = a.country

SELECT w.country, w.region, w.total_cases, w.cases_in_last_7days, w.cases_in_last_24hrs, w.total_deaths, w.deaths_in_last_7days, w.deaths_in_last_24hrs,
	a.country, a.year, a.population, a.male_population, a.female_population, a.annual_growth_rate 
FROM global_data w
LEFT JOIN population_2019 a
ON w.country = a.country
