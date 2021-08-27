-- https://www.hackerrank.com/challenges/print-prime-numbers/problem

DECLARE @I INT=2;
DECLARE @P INT = 0;
DECLARE @ANS NVARCHAR(1000) = ''; 

WHILE (@I<=1000)
BEGIN
   DECLARE @J INT = @I-1;
   SET @P = 1;
   WHILE(@J > 1)
   BEGIN
      IF @I % @J = 0
      BEGIN 
         SET @P = 0;
      END
    SET @J = @J - 1;
   END
   IF @P = 1
   BEGIN
      SET @ANS += CAST(@I AS NVARCHAR(1000)) + '&';
   END
SET @I = @I + 1;
END
SET @ANS = SUBSTRING(@ANS, 1, LEN(@ANS) - 1)
SELECT @ANS