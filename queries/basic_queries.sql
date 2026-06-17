
-- customers 
SELECT * FROM customers;


SELECT DISTINCT * FROM customers;



SELECT * FROM customers
WHERE customer_id > 0
GROUP BY country 
ORDER BY name ASC 
LIMIT 5;


-- Products 

SELECT * FROM Products



SELECT *
FROM products
WHERE price > 500;



SELECT DISTINCT * FROM products 
GROUP BY cateogry
ORDER BY price DESC 


SELECT * FROM order_items;


SELECT qauntity FROM order_items 
WHERE quatity > 3 
ORDER BY order_id DESC;



-- View Query 

SELECT *
FROM sales_summary;

