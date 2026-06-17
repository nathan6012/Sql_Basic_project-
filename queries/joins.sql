

SELECT 
c.name
o.order_date
FROM customers
INNER JOIN orders o ON c.customer_id =o.customer_id;




SELECT 
c.name
o.order_date
FROM customers
LEFT  JOIN orders o ON c.customer_id =o.customer_id;



-- Views 


CREATE VIEW sales_summary AS
SELECT
p.category,
SUM(p.price * oi.quantity) revenue
FROM products p
JOIN order_items oi
ON p.product_id=oi.product_id
GROUP BY p.category;

