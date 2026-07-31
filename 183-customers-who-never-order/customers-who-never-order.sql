-- Write your PostgreSQL query statement below
SELECT c.name AS Customers FROM Customers c
WHERE NOT EXISTS (SELECT o.customerId FROM orders o WHERE o.customerId=c.id )