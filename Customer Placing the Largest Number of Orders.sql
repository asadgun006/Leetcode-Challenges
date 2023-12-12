SELECT customer_number
FROM ORDERS
GROUP BY customer_number
ORDER BY COUNT(customer_number) desc
LIMIT 1;