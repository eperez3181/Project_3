# Project 3: 
![alt text](images/ETL.png)
* https://paozmoreno.github.io/Project_3/
* https://paozmoreno.github.io/Project_3/leaflet/


##### Team Members: Estela Perez, Paola Moreno, Ramiro Cervantes, Osamu Adler

##


## Background
The purpose of our project is to create a dashboard for Global COVID-19 cases and deaths, from December 31, 2019-PRESENT![image](https://user-images.githubusercontent.com/102872511/183553755-0fd87706-445a-4775-9e68-b9e1e605ef59.png


## Sources
During the data extraction phase, we exported both structured and unstructured raw data from various source locations to our staging area. 

U.S. Census Bureau (for country population)
(https://www.census.gov/data-tools/demo/idb/#/table?COUNTRY_YEAR=2022&COUNTRY_YR_ANIM=2022&ANIM_PARAMS=2019,2022,3&menu=tableViz&TABLE_RANGE=2019,2022&TABLE_YEARS=2019,2020,2021,2022&TABLE_USE_RANGE=Y&TABLE_USE_YEARS=Y&TABLE_STEP=1&TABLE_ADD_YEARS=2022#)

World Health Organization 
(https://covid19.who.int/data#)
(https://covid19.who.int/table#)

State COVID-19 Data and Policy Actions
(https://www.kff.org/coronavirus-covid-19/issue-brief/state-covid-19-data-and-policy-actions/#)
![image](https://user-images.githubusercontent.com/102872511/183554173-a554b1ca-c147-446d-b346-7ba012406a63.png)


## TRANSFORM
In this phase, we transformed and consolidated our raw data for our intended analytical use. This phase consisted of:
- Filtering, cleansing and de-duplicating the data
- Changing column headers for consistency, editing text strings, and reformatting columns.
- Using pandas.melt to reformat some of our tables to match the schema of the target data warehouse.

Examples below:
![alt text](images/transform_annual_inflation.PNG)


![alt text](images/transform_annual_inflation.PNG)

## LOAD
### Schema

Once our data frames were cleaned and consolidated, we had the schema we needed to create our database in pgAdmin. We used that schema to ensure appropriate dimensions when creating our tables for each of our original five data frames. 

![alt text](images/schema.PNG)

After using pandas to create our database connection in Jupyter, we loaded each data frame into our database, ensuring to replace instead of append. We confirmed our data had been imported accurately by querying each table in our Jupyter notebook.

![alt text](images/connection_and_loading.PNG)

## pgAdmin
Finally, back in pgAdmin, we joined the appropriate tables for our intended analytical use. 

We joined the income and annual_inflation tables to analyze the historical relationship between inflation rates and income levels, by country.

![alt text](images/join_income_annual_inflation.PNG)

To take a closer look at the U.S. specifically, we combined the usa_monthly_cpi and us_inflation_hist. This new table gives us insight into the U.S. inflation rate in relation to major world events in the last century. 

![alt text](images/join_monthly_us_inflation_hist.PNG)

Finally, we combined the income and unemployment tables to analyze global inflation rates, gdp deflator indices, income levels and unemployment rates, by country from 1970-2021 (see below).

![alt text](images/join_income_unemp.PNG)

