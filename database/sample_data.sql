

INSERT INTO customers(name,email,country)
VALUES
('John','john@gmail.com','Uganda'),
('Anna','anna@gmail.com','Kenya'),
('jay','jayz@gmail.com','South Africa'),
('Lukas','shmerzlukas133@gmil.com','Germany');
-- >> add on conflict 
--ON CONFLICT( customer_id) 
--DO UPDATE 
--SET price = EXCLUDED.name;

INSERT INTO products(product_name,category,price)
VALUES
('Laptop','Electronics',1000),
('Phone','Electronics',500),
('Chair','Furniture',100),
('Tv','Electronics',800),
('bucket','plastics',80);
--ON CONFLICT( product_id) 
--DO UPDATE 
--SET price = EXCLUDED.product_name;


INSERT INTO orders (customer_id, order_date)
VALUES
(1, '2026-01-05'),
(2, '2026-01-10'),
(1, '2026-02-15'),
(2, '2026-03-01'),
(1, '2026-03-20'),
(2, '2026-04-05');

INSERT INTO order_items (order_id, product_id, quantity)
VALUES
(1, 1, 2),   -- Order 1: 2 Laptops
(1, 2, 1),   -- Order 1: 1 Phone

(2, 3, 4),   -- Order 2: 4 Chairs

(3, 2, 3),   -- Order 3: 3 Phones
(3, 3, 2),   -- Order 3: 2 Chairs

(4, 1, 1),   -- Order 4: 1 Laptop

(5, 2, 2),   -- Order 5: 2 Phones

(6, 3, 5);   -- Order 6: 5 Chairs


