SELECT sp.name
FROM SalesPerson sp
WHERE sp.sales_id NOT IN (SELECT ord.sales_id
FROM ORDERS ord
LEFT JOIN Company cm ON ord.com_id = cm.com_id
WHERE cm.name ='RED');