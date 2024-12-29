/*
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.

Output Format
Your results must be in the form:
lat lon

where lat is the sum of all values in LAT_N and long is the sum of all values in LONG_W. Both results must be rounded to a scale of 2 decimal places.
*/
SELECT ROUND((SUM(LAT_N)),2), ROUND((SUM(LONG_W)),2) FROM STATION;

-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
SELECT ROUND((SUM(LAT_N)),4) FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
SELECT ROUND((MAX(LAT_N)),4) FROM STATION
WHERE LAT_N < 137.2345;

-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to  4 decimal places.
SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880. Round your answer to 4 decimal places.
SELECT ROUND((MIN(LAT_N)),4) FROM STATION
WHERE LAT_N > 38.7880;

-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7880. Round your answer to 4 decimal places.
SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7880);

-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(CITY.population) FROM CITY
JOIN COUNTRY ON CITY.countrycode = COUNTRY.code
WHERE COUNTRY.continent = 'Asia';

-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT CITY.name FROM CITY
JOIN COUNTRY ON CITY.countrycode = COUNTRY.code
WHERE COUNTRY.continent = 'Africa';
