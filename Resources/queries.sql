SELECT * FROM timeline_data;
SELECT * FROM global_data;



SELECT w.country, w.region, w.total_cases, w.cases_in_last_7days, w.cases_in_last_24hrs, w.total_deaths, w.deaths_in_last_7days, w.deaths_in_last_24hrs,
	a.country, a.date, a.confirmed_cases, a.confirmed_deaths, a.population
FROM timeline_data a
RIGHT JOIN global_data w
ON w.country = a.country
AND w.date = a.date
