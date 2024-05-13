- --EDA ( Exploratory Data Analysis )

--Data exploration
SELECT *
FROM World_population

select *
from  countries

SELECT AVG(CAST(Population AS BIGINT)) AS AveragePopulation
FROM countries;

 --What is the largest population size for Luxembourg in this dataset?

SELECT MAX(Country_Territory) AS newcountry
FROM World_population
WHERE Country_Territory = 'Luxembourg';



--Which country has the highest population in 2022?

SELECT * 
FROM World_population
WHERE _2022_Population = (SELECT MAX(_2022_Population) FROM World_population);

--Which country has the least number of people in 2022?

SELECT * 
FROM World_population 
WHERE _2022_Population = (SELECT MIN(_2022_Population) FROM World_population);

--Find the Population of India with all details.

SELECT * 
FROM World_population
WHERE Country_Territory = 'India';

--A list of countries,The word IN allows us to check if an item is in a list.

SELECT Country_Territory,  _2022_Population
FROM World_population 
WHERE Country_Territory IN ('Germany', 'Spain', 'china') 
ORDER BY _2022_Population;

--Which country are not too small and not too big in Population

SELECT AVG(CAST(_2022_Population AS DECIMAL(18, 2))) AS Average_population 
FROM World_population;

SELECT * FROM World_population where _2022_Population BETWEEN 10000000 AND 100000000
ORDER BY _2022_Population;

--Find out how much population was increased from 2020–2021 for all countries?

SELECT Growth_Rate,
       country_Territory,
       (_2022_Population - _2020_population) AS increased_population_count
FROM World_population;

 --Population was increased significantly around in millions from 2020–2021.

SELECT SUM(CAST(_2022_Population AS DECIMAL(38,0))) AS total_population_2022,
       SUM(CAST(_2020_Population AS DECIMAL(38,0))) AS total_population_2020 
FROM World_population

