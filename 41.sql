-- https://www.hackerrank.com/challenges/the-pads/problem

SELECT CONCAT(NAME,'(',SUBSTR(OCCUPATION, 1, 1),')') AS A
FROM OCCUPATIONS ORDER BY A;

SELECT CONCAT('There are a total of',' ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.') AS B
FROM OCCUPATIONS GROUP BY OCCUPATION ORDER BY B;