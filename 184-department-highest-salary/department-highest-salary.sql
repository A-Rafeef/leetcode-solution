-- Write your PostgreSQL query statement below
SELECT d.name AS Department ,
        e.name AS Employee,
        e.salary AS Salary
FROM Employee e
JOIN (SELECT MAX(salary) AS salary, departmentId
		FROM Employee e
		GROUP BY departmentId)AS ee
ON e.departmentId=ee.departmentId AND e.salary=ee.salary
JOIN Department d
ON e.departmentId=d.id





