-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

SET @A = 21;
SELECT REPEAT('* ', @A:=@A-1) FROM INFORMATION_SCHEMA.TABLES;