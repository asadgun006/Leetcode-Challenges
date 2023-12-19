WITH cte as 
(SELECT id, num, LEAD(num) OVER() as numlead
FROM Logs
ORDER BY id),
ctetwo as (
SELECT num, numlead, LEAD(numlead) OVER() as leadlead
FROM cte)
SELECT DISTINCT num as ConsecutiveNums
FROM ctetwo
WHERE num = numlead and numlead = leadlead;
