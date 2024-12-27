-- Query a count of the number of cities in CITY having a Population larger than 100000.
SELECT COUNT(population) FROM CITY 
WHERE population > 100000;

-- Query the total population of all cities in CITY where District is California.
SELECT SUM(population) FROM CITY
WHERE District = "California";

-- Query the average population of all cities in CITY where District is California.
SELECT AVG(population) FROM CITY
WHERE District = "California";

-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(population)) FROM CITY;

-- 
