--Question 1
--Select name column
SELECT name FROM world
--Select names that start with Y
  WHERE name LIKE 'Y%'
  
--Question2
--Select name column
SELECT name FROM world
--Select names that end with y
  WHERE name LIKE '%y'
  
-- Question 3
-- Select name column
SELECT name FROM world
-- Select names that have a x
  WHERE name LIKE '%x%'
  
  --Question 4
--Select name column
SELECT name FROM world
--Select names that end with land
  WHERE name LIKE '%land'
  
  -- Question 5
-- Select name column
SELECT name FROM world
-- Select names that begin with C and end with ia
  WHERE name LIKE 'C%ia'
  
  -- Question 6
-- Select name column
SELECT name FROM world
-- Select names that have double o
  WHERE name LIKE '%oo%'
  
  -- Question 7
-- Select name column
SELECT name FROM world
--Select names with 3 or more 'a's
  WHERE name LIKE '%a%a%a%'
  
  -- Question 8
-- Select names column
SELECT name FROM world
-- Find names where t is the second letter
 WHERE name LIKE '_t%'
-- Put in alphabetical order by name
ORDER BY name

--Question 9
--Select name column
SELECT name FROM world
--Select names with two o characters seperated by two letters
 WHERE name LIKE '%o__o%'
 
 -- Question 10
-- Select name columns
SELECT name FROM world
-- Select names with 4 letters
 WHERE name LIKE '____'
