-- Write your PostgreSQL query statement below
SELECT CASE 
	WHEN COUNT(*)<=1 THEN NULL
	ELSE MIN(s.salary)
END	 AS SecondHighestSalary 
FROM (SELECT DISTINCT salary FROM Employee 
	ORDER BY salary DESC
	LIMIT 2
	) AS s
