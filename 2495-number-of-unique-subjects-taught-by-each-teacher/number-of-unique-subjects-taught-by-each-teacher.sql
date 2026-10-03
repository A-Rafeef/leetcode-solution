-- Write your PostgreSQL query statement below
select teacher_id, COUNT( Distinct subject_id ) AS cnt
from Teacher
Group by teacher_id