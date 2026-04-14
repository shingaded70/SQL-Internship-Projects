CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    price REAL
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER
);

INSERT INTO customers VALUES (1,'Amit'),(2,'Riya');

INSERT INTO products VALUES
(1,'Laptop',50000),
(2,'Phone',20000);

INSERT INTO orders VALUES
(1,1,1,1),
(2,2,2,2);

SELECT c.name, p.product_name, o.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
