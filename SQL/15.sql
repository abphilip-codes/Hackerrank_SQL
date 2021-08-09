-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

SELECT DISTINCT CITY FROM STATION 
WHERE UPPER(SUBSTR(CITY,LENGTH(CITY),1)) IN ('A','E','I','O','U');