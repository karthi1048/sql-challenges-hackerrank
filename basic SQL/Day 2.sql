/* Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. 
The query returns 1.
*/
SELECT (COUNT(CITY) - COUNT(DISTINCT CITY)) FROM STATION;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION
WHERE CITY LIKE 'A%' 
OR CITY LIKE 'E%'
OR CITY LIKE 'I%'
OR CITY LIKE 'O%'
OR CITY LIKE 'U%';
