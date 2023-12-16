WITH cte as (SELECT * FROM RequestAccepted
UNION
SELECT accepter_id, requester_id, accept_date
FROM RequestAccepted)
SELECT requester_id as id, COUNT(requester_id) as num
FROM cte
GROUP BY requester_id
ORDER BY COUNT(requester_id) desc
LIMIT 1;
