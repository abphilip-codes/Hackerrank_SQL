-- https://www.hackerrank.com/challenges/symmetric-pairs/problem

SELECT A.X,A.Y FROM FUNCTIONS A INNER JOIN FUNCTIONS B ON B.Y=A.X AND B.X=A.Y
GROUP BY A.X, A.Y HAVING COUNT(A.X)>1 or A.X<A.Y ORDER BY A.X 