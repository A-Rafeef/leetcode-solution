-- Write your PostgreSQL query statement below
SELECT class
FROM (SELECT class, COUNT( *) AS count
        FROM Courses 
        GROUP BY class )t
WHERE count>=5