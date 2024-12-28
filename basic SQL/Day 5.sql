-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(population) FROM CITY WHERE COUNTRYCODE = 'JPN';

-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(population) - MIN(population) FROM CITY;

/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
Note: Salary is per month.

Sample Output
2061

Explanation
The table below shows the salaries without zeros as they were entered by Samantha
Samantha computes an average salary of 98.00. The actual average salary is  2159.00.
The resulting error between the two calculations is 2159.00 - 98.00 = 2061.00 . Since it is equal to the integer 2061, it does not get rounded up.
*/
SELECT CEILING(AVG(salary) - AVG(REPLACE(salary,'0','')))
FROM EMPLOYEES;
