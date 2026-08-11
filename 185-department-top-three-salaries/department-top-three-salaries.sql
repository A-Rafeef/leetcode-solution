-- Write your PostgreSQL query statement below
WITH jn AS ( SELECT e.name AS name,e.salary AS salary, d.name AS dname, DENSE_RANK() OVER( PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rn
            FROM employee e
            JOIN  department d
            ON e.departmentId = d.id )

SELECT dname AS Department, name AS Employee, salary AS Salary
FROM jn
WHERE rn <=3