--Question 1
SELECT population FROM world 
-- Select population column world table
  WHERE name = 'Germany'  
-- Select Germanys population

--Question 2
-- Select name and population columns
SELECT name, population FROM world
-- Select from the following countries with these names
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

--Question 3
-- Select name and area columns
SELECT name, area FROM world
-- Select countries with an area between 200000-250000
  WHERE area BETWEEN 200000 AND 250000
