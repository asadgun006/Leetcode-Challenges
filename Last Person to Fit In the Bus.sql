WITH cte as 
(SELECT qq.*, SUM(weight) OVER(ORDER BY turn) as total_weight
FROM Queue qq),
ctetwo as 
(SELECT person_name, total_weight, ROW_NUMBER() OVER() as rownum
FROM cte
WHERE total_weight <= 1000)
SELECT person_name
FROM ctetwo
WHERE rownum = (SELECT max(rownum) FROM ctetwo);
