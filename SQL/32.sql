-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

SELECT (MONTHS*SALARY) AS COL, COUNT(*) 
FROM EMPLOYEE
GROUP BY 1
ORDER BY COL DESC
LIMIT 1