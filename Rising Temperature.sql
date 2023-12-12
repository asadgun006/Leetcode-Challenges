WITH cte as 
(SELECT w.*, LAG(recordDate) OVER(ORDER BY recordDate) as prevdate, LAG(temperature) OVER(ORDER BY recordDate) as leadtemp
FROM Weather w)
SELECT id as Id
FROM cte
WHERE temperature > leadtemp AND DATEDIFF(recordDate, prevdate) = 1;
