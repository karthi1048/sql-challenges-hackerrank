-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION
WHERE CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u';

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. 
SELECT DISTINCT(CITY) FROM STATION
WHERE (CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%')
OR
(CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u');

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION
WHERE (CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%')
AND
(CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u');

/* 
Query the Name of any student in STUDENTS who scored higher than  Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

Sample Output
Ashley
Julia
Belvet

Explanation
Only Ashley, Julia, and Belvet have Marks > . 
If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.
*/
SELECT NAME FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT (NAME,3), ID;

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT NAME FROM EMPLOYEE ORDER BY NAME;

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000  per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name FROM EMPLOYEE
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;

/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Sample Output
Isosceles
Equilateral
Scalene
Not A Triangle

Explanation
Values in the tuple (20,20,23)  form an Isosceles triangle, because A=B .
Values in the tuple (20,20,20) form an Equilateral triangle, because A=B=C . 
Values in the tuple (20,21,22)  form a Scalene triangle, because A!=B!=C .
Values in the tuple (13,14,30) cannot form a triangle because the combined value of sides A and B is not larger than that of side C .
*/
SELECT 
    IF(A + B <= C OR A + C <= B OR B + C <= A, 'Not A Triangle',
        IF(A = B AND B = C, 'Equilateral',
            IF(A = B OR A = C OR B = C, 'Isosceles', 'Scalene')
        )
    )
FROM TRIANGLES;
