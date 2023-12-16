WITH cte as (SELECT p.*, RANK() OVER(PARTITION BY product_id ORDER BY change_date desc) as ranker
FROM PRODUCTS p
WHERE change_date <= '2019-08-16')
SELECT product_id, new_price as price
FROM cte
WHERE ranker = 1
UNION
SELECT product_id, 10 as price
FROM Products
WHERE change_date > '2019-08-16' AND product_id NOT IN (SELECT product_id
FROM PRODUCTS p
WHERE change_date <= '2019-08-16');
