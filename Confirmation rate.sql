SELECT su.user_id, ROUND(SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END) / 
COUNT(su.user_id), 2) as confirmation_rate
FROM Signups su
LEFT JOIN Confirmations cf ON su.user_id = cf.user_id
GROUP BY su.user_id
ORDER BY confirmation_rate, su.user_id desc
