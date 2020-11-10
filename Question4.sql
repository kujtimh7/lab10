-- Question 1
-- Select names with a population greater then russia
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
      
-- Question 2
-- Select names within europe that have a greater GDP per capita then the UK
select name from world
where continent = 'Europe' AND gdp/population > 
(select gdp/population from world
where name ='United Kingdom')

-- Question 3
-- List name and continent of countries that share its continent with Argentina or australia
Select name, continent from world
where continent = (
Select continent from world 
where name = 'Argentina') or continent = 
( Select continent from world
where name = 'Australia')
-- Order by their names
order by name
      
-- Question 4
-- List all countries with a population more than Canada but less than poland
Select name, population from world
where population > (select population from world where name = 'Canada') AND
population < (select population from world where name = 'Poland')   

-- Question 5
-- Show the name and the population as a percentage of germanys population of all countries in europe
SELECT name, CONCAT(ROUND(100*(population/(SELECT population FROM world WHERE name = 'Germany')), 0), '%')
FROM world

-- Question 6
-- Select the countries witha higher GDP then all countries in Europe
select name from world 
where GDP > ALL(select gdp from world
where continent = 'Europe' AND gdp > 0)

-- Question 7
-- Find the country in each continent with the largest area

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE area>0
          AND x.continent = y.continent)
          
          
-- Question 8
-- Select the country that comes first alphabetically in each continent
Select continent, name from world a
where name <= ALL(select name from world b where a.continent = b.continent)

-- Question 9
-- find the continent where all countries have a population less then 25000000
select name, continent, population from world x
where 25000000 >= ALL( select population from world y
where x.continent = y.continent )


-- Question 10
-- Find the countries that have 3x more population than their neighbors
select name, continent from world a 
where population > ALL(select 3*population from world b
where b.continent = a.continent AND a.name != b.name)
