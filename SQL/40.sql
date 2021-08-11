-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem

SET @N:= 0;
SELECT COUNT(*) FROM STATION INTO @T;

SELECT ROUND(AVG(A.LAT_N), 4)
FROM (SELECT @N:=@N+1 AS ROW_ID, 
      LAT_N FROM STATION 
      ORDER BY LAT_N) A
WHERE
    CASE 
    WHEN MOD(@T,2)=0 
        THEN A.ROW_ID IN (@T/2,(@T/2+1))
        ELSE A.ROW_ID = (@T+1)/2
    END