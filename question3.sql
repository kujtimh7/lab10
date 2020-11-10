-- Question 1
-- Select year, subject and winner columns
SELECT yr, subject, winner
  FROM nobel
-- Select winners from 1950
 WHERE yr = 1950
 
 -- Question 2
-- Select winners column
SELECT winner
  FROM nobel
-- Select winners from 1962 and who won in literature
 WHERE yr = 1962
   AND subject = 'Literature'
   
   -- Question 3
-- Select yr and subject columns
Select yr,subject from nobel
-- Show what yr and subject Albert Einstein won
where winner = 'Albert Einstein'

-- Question 4
-- Select winner column
select winner from nobel
-- Select winners of peace prize since 2000
where subject = 'Peace' AND yr >= 2000

-- Question 5 
-- select year, subject and winner cloumns 
select yr, subject, winner from nobel 
-- Select winners between 1989 and 1980 who won the literature price
where yr between 1980 AND 1989 AND subject = 'Literature'

--Question 6
-- Select all details
SELECT * FROM nobel
-- Select all presidential winners
 WHERE winner = 'Theodore Roosevelt' OR winner = 'Woodrow Wilson' OR winner= 'Jimmy Carter'  OR winner = 'Barack Obama'
 
 
 -- Question 7
-- Select all details
SELECT winner FROM nobel
-- Select all people with the name Jhn
 WHERE winner like 'John%'
 
 -- Question 8
-- Select all details 
Select * From nobel
-- Select winners in checmisty from 1984 and winners in physics in 1980
where (yr = 1980 and subject = 'Physics') or (yr = 1984 and subject = 'Chemistry') 

-- question 9
-- select all columns
Select * from nobel
-- select 1980 winners except for those who won in chemistry and medicine
where yr = 1980 and NOT (subject = 'Chemistry' OR subject = 'Medicine')

-- Question 10
-- Select all columns
select * from nobel 
-- Select winners of medicine before 1910 and winners of literature after 2004
where (subject = 'Medicine' AND yr <1910) OR (subject = 'Literature' AND yr >= 2004)

-- Question 11 
-- Select all details
select * from nobel
-- Select PETER GRUNBERG
where winner = 'PETER GRÜNBERG

-- Question 12
-- Select all details
select * from nobel
-- Select EUGENE O'NEILL to display all his details and make sure to double ' quote
where winner = 'EUGENE O''NEILL'

-- Question 13
-- Select all columns
select winner, yr, subject from nobel 
-- Order by winners who start with Sir by most recent and then by their names
where winner like 'Sir%'
order by yr desc, winner
-- Question 14
-- select winner and subject collumn
SELECT winner, subject
  FROM nobel
-- select winners of 1984, making sure chemistry and physics winners are last
 WHERE yr=1984
 ORDER BY subject IN ('Physics', 'Chemistry'), subject, winner

