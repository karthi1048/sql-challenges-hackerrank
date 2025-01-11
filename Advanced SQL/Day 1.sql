/*
P(R) represents a pattern drawn by Julia in R rows. 
The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/
WITH RECURSIVE Pattern(row_num, stars) 
AS (
    SELECT 20, REPEAT('* ', 20)
    UNION ALL
    SELECT row_num - 1, REPEAT('* ', row_num - 1)
    FROM Pattern 
    WHERE row_num > 1
)
SELECT stars FROM Pattern;

/*
P(R) represents a pattern drawn by Julia in R rows. 
The following pattern represents P(5):
* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).
*/
WITH RECURSIVE Pattern(row_num, stars) 
AS (
    SELECT 1, CAST(REPEAT('* ', 1) AS CHAR(1000))
    UNION ALL
    SELECT row_num + 1, CAST(REPEAT('* ', row_num + 1) AS CHAR(1000))
    FROM Pattern
    WHERE row_num < 20
)
SELECT stars FROM Pattern;
