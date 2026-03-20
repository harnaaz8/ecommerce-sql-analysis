-- Top 10 most sold products
USE ecommerce ;
SELECT oi.product_id, COUNT(oi.product_id) AS Number_of_times_ordered
FROM order_items oi
GROUP BY oi.product_id
ORDER BY Number_of_times_ordered DESC
LIMIT 10;
