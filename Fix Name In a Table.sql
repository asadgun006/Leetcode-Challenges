Select user_id, CONCAT(UPPER(SUBSTRING(name, 1,1)), LOWER(SUBSTRING(name, 2))) as name
FROM users
ORDER BY user_id;
