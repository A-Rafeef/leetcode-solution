-- Write your PostgreSQL query statement below
SELECT distinct author_id AS id
from views
where author_id=viewer_id