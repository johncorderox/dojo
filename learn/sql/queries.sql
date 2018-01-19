SELECT name, language, percentage
FROM countries
JOIN languages on countries.id = languages.country_id
WHERE language = "Slovene"
ORDER BY percentage DESC

SELECT countries.name as country_name, COUNT(cities.name)
FROM countries
JOIN cities
ON countries.id = cities.country_id
GROUP BY (countries.name)

SELECT name as city_name, country_code, population
FROM cities
WHERE population > 500000
AND country_code = "MEX"
ORDER BY population
DESC

SELECT countries.name as country_name, language, percentage
FROM countries
JOIN languages
on countries.id = languages.country_id
WHERE percentage > 89
ORDER BY percentage ASC

SELECT name as country_name, surface_area, population
FROM countries
WHERE surface_area < 501 and population > 100000

SELECT countries.name AS country_name, government_form, capital, life_expectancy
FROM countries
WHERE capital > 200 AND life_expectancy > 75

SELECT countries.name as country_name, cities.name as city_name, cities.district, countries.population
FROM cities
JOIN countries
ON countries.id = cities.country_id
WHERE district = "Buenos Aires" AND countries.population > 500000
