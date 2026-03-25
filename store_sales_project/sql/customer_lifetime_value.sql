Select concat(c.first_name, ' ', c.last_name) AS name, sum(s.quantity*p.price*(1-s.discount)) AS total_spending
FROM sales AS s
INNER JOIN products AS p
USING(product_id)
INNER JOIN customers AS c
ON c.customer_id=s.customer_id
GROUP BY name
ORDER BY total_spending desc
LIMIT 20;