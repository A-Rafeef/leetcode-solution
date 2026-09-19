-- Write your PostgreSQL query statement below
SELECT u.unique_id, e.name
FROM EmployeeUNI u
right JOIN employees e
ON e.id= u.id