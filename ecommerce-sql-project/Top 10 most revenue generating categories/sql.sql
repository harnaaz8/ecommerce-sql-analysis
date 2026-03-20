-- Top 10 most revenue generating categories
USE ecommerce;
SELECT p.product_category_name, CAST(SUM(oi.price) AS SIGNED) as Total_revenue
FROM order_items oi
JOIN products p ON oi.product_id= p.product_id
GROUP BY p.product_category_name
ORDER BY Total_revenue DESC
LIMIT 10;