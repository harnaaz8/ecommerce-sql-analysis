-- Top 10 most Revenue generating Products
USE ecommerce;
SELECT oi.product_id, CAST(SUM(oi.price) AS SIGNED) AS Revenue_from_each_product
FROM order_items oi
GROUP BY oi.product_id
ORDER BY Revenue_from_each_product DESC
LIMIT 10;