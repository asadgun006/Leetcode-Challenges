SELECT actor_id, director_id
FROM ACTORDIRECTOR ad
GROUP BY 1, 2
HAVING COUNT(director_id) >= 3;