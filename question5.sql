-- Question 1
-- Print the population of the world
SELECT SUM(population)
FROM world

-- Question 2
-- List all continents
Select Distinct(continent) from world a

-- Question 3
-- Print the total GDP of the Africa
SELECT SUM(GDP)
FROM world
Where continent = 'Africa'

-- Question 4
-- List all countries with an area least than 1000000
SELECT COUNT(name) from world
where area > 1000000

-- Question 5
-- List the total pop of the three countries
select sum(population) from world 
where name = 'Estonia' or name = 'Latvia' or name = 'Lithuania'

-- Question 6
-- Print the continent and the number of countries in it
select continent, count(name) from world
group by continent

-- Question 7
-- List all countries with a population of atleast 10 million
SELECT continent, count(name) from world
where population > 10000000
group by continent

-- Question 8
-- List the continents that have population less then 10 million
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) > 100000000
