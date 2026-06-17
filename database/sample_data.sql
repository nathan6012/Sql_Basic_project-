

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



INSERT INTO orders 

INSERT INTO order order_items




