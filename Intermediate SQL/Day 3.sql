/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
NOTE: 
The median of a set of numbers is the value separating the higher half from the lower half of a data sample, a population, or a probability distribution. For a data set, it may be thought of as the “middle" value.
*/
SELECT ROUND(AVG(LAT_N), 4)
FROM
(SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn
 FROM station) AS subquery
WHERE
    rn = (SELECT CEIL((COUNT(rn)+1)/2) FROM station)
    OR
    rn = (SELECT FLOOR((COUNT(rn)+1)/2) FROM station);
