
-- number of customers 

SELECT count(name) AS Total_number_of_customers FROM customers WHERE name IS NOT NULL;


-- number of products

SELECT count(product_name) AS number_of_products FROM products WHERE product_name IS NOT NULL;



SELCET count(quantity) AS total_number_of_orders FROM order_items WHERE quantity IS NOT NULL;


SELCET max(quantity) AS biggest_order  FROM order_items WHERE quantity IS NOT NULL;

SELCET min(quantity) AS smallest_order  FROM order_items WHERE quantity IS NOT NULL;


SELECT sum(price) AS total_prices FROM products
WHERE product_id > 0 
GROUP By category 



SELECT SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id=p.product_id;


SELECT p.product_name,
SUM(oi.quantity) total_sold FROM order_items oi
JOIN products p ON oi.product_id=p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;


-- cases 
SELECT product_name,price FROM products 
 CASE 
    WHEN price > 500 THEN 'expensive item '
    WHEN price < 500 THEN 'cheap item'
    ELSE 'No price range detail'
END AS  product_price_discription;

-- ctes 

with total_orders AS(
SELECT count(quantity) as total_orders 
WHERE io.quantity > 0 
)

-- Window Functions 
SELECT product_name,sum(price) ROW_NUMBER()
OVER( PARTITION BY category 
ORDER BY product_name ASC ) 
FROM products










