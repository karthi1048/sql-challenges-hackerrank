/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

- a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
- b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
- c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
- d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
Note: Manhattan Distance
The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
*/
SELECT 
ROUND(
    (ABS((MIN(LAT_N) - MAX(LAT_N)))) +
    (ABS((MIN(LONG_W) - MAX(LONG_W))))
    ,4)
FROM STATION;

/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display  4 decimal digits.
NOTE: Euclidean distance
Square root of [(b-a)^2 + (d-c)^2]
*/
/*
Enter your query here.
*/
SELECT 
ROUND(
    SQRT(
        POWER((MAX(LAT_N) - MIN(LAT_N)), 2) +
        POWER((MAX(LONG_W) - MIN(LONG_W)), 2)
    ), 4)
FROM STATION;
