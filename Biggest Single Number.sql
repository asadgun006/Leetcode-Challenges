SELECT CASE WHEN count(num) = 1 THEN num ELSE null END as num
FROM MyNumbers
GROUP BY num
ORDER BY num desc
LIMIT 1;