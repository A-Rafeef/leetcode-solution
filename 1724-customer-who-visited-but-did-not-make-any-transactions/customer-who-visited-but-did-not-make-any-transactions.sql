-- Write your PostgreSQL query statement below
SELECT distinct customer_id, count(customer_id) as count_no_trans
FROM visits v
Left join transactions t
ON v.visit_id=t.visit_id
WHere t.visit_id IS NULL
group by customer_id
