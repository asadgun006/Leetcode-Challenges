SELECT player_id, MIN(event_date) as first_login
FROM ACTIVITY
GROUP BY player_id