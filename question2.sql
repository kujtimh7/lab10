-- Question 1
-- select print name continents and population
SELECT name, continent, population FROM world


-- Question 2
-- select name column
SELECT name FROM world
-- Select populations of atleast 200 million
WHERE population >= 200000000

--Question 3
--Select name and gdp per capita of countries 
SELECT name, gdp/population FROM world
-- Select names and gdp/pop with pop of atleast 200 mill
where population >= 200000000

--Question 4
--Select name and population in the millions
SELECT name, population/1000000 FROM world
-- Select the names from South America
WHERE continent = 'South America'

-- Question 5
-- Select name and population
SELECT name, population FROM world
-- Select France, Germany and Italy
WHERE name = 'France' OR name ='Germany' OR name = 'Italy'

-- Question 6
-- Select name column
SELECT name from world
-- Select names that have united in it
where name like '%United%'

-- Question 7 
-- Select name, population,area column
Select name, population, area from world
-- Select names with population more than 250 mill or area more than 3 million
Where population > 250000000 OR area > 3000000

-- Question 8
-- Select name, population,area column
Select name, population, area from world
-- Select names with population more than 250 mill or an area more than 3 million, but not both
Where population > 250000000 XOR area > 3000000

-- Question 9
-- Select name and population in millions and GDP in billions rounded to 2 decimal point
SELECt name, ROUND(population/1000000,2), Round(GDP/1000000000,2) from world
-- Only the names in SA
where continent = 'South America'

-- Question 10
-- Select name and per-capita GDP rounded to nearest 1000
SELECT name, ROUND(gdp/population,-3) from world
-- Select GDPs of that are greater then 1 trillion
Where GDP > 1000000000000 

-- Question 11
-- Select name and capital
SELECT name,
       capital
  FROM world
-- Select countries where name and capital are the same length
 WHERE LENGTH(name) = LENGTH(capital)
 
 -- Question 12
-- Select name and capital column
SELECT name, capital
FROM world
-- Select name and capital with the same first letter but aren't the same word
where LEFT(name,1) = LEFT(capital,1) AND name <> capital


-- Question 13
-- Select name column
SELECT name
   FROM world
-- Select name with all vowels but no spaces
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%'
  AND name NOT LIKE '% %'
