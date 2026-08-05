-- Write your PostgreSQL query statement below
    SELECT id
    FROM Weather W1
    WHERE EXISTS (SELECT 1
            FROM Weather W2
            WHERE W1.recordDate =w2.recordDate +1 AND w1.temperature >w2.temperature )