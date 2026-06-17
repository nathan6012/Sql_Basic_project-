--> Table schemas 

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    country VARCHAR(50)
);


CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id)
);





CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY(order_id)
    REFERENCES orders(order_id),
    FOREIGN KEY(product_id)
    REFERENCES products(product_id)
);


CREATE INDEX customers_idx ON customers(customer_id);

CREATE INDEX products_idx ON products(product_id);

CREATE INDEX orders_idx ON orders(order_id);



