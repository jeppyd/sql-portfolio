SELECT TO_CHAR(date_trunc('month', sales_date), 'Month YYYY') AS month, 
       SUM(p.price * s.quantity * (1 - s.discount)) AS total_revenue
FROM sales AS s
INNER JOIN products AS p
USING(product_id)
WHERE sales_date IS NOT NULL
GROUP BY date_trunc('month', sales_date)
ORDER BY date_trunc('month', sales_date)