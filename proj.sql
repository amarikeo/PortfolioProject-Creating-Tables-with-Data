SELECT 
order_date, order_id,
'ACTIVE' AS status
FROM orders o
WHERE order_date > '2019-01-01'
UNION
SELECT order_date, order_id,
'DEAD'
FROM orders o
WHERE order_date <= '2019-01-01'