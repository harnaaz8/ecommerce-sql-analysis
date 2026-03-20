-- Top revenue-generating customers
SELECT c.customer_unique_id, SUM(oi.price) AS total_expenditure
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id
ORDER BY total_expenditure DESC
LIMIT 10;