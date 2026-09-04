-- Write your PostgreSQL query statement below
WITH nn AS ( SELECT num, LEAD(num) OVER() AS num2, LEAD(num,2) OVER() AS num3
FROM Logs)

SELECT DISTINCT num AS ConsecutiveNums 
FROM nn
WHERE num=num2 AND num=num3