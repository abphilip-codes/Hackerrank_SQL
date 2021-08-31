-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

SET @A = 0;
SELECT REPEAT('* ', @A:=@A+1) FROM INFORMATION_SCHEMA.TABLES
WHERE @A<20;