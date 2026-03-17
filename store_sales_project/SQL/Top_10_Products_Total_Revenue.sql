SELECT p.product_name, SUM(p.price*(1-s.discount)*s.quantity) AS total_revenue
FROM products AS p
INNER JOIN sales AS s
USING(product_id)
GROUP BY p.product_name
ORDER BY total_revenue desc
LIMIT 10;