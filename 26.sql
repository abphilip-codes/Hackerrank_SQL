-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

SELECT SUM(POPULATION)/COUNT(ID) FROM CITY
WHERE DISTRICT='CALIFORNIA'