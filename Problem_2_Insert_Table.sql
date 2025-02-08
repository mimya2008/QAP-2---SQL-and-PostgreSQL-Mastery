INSERT INTO products (product_name, price, stock_quantity) VALUES
('Bag', 50.00, 15),
('Sunglass', 30.00, 38),
('Pants', 40.00, 70),
('Shirts', 40.00, 80),
('Cap', 30.00, 33);



INSERT INTO customers (first_name, last_name, email) VALUES
('John', 'Doe', 'doejohn32@gmail.com'),
('Mike', 'Borders', 'mikebordars76@gmail.com'),
('Aileen', 'Sinnot', 'aileen8762@gmail.com'),
('Lisa', 'Audrey', 'audreylisa009@gmail.com');


INSERT INTO orders (customer_id, order_date) VALUES
(2, '2025-01-07'),
(3, '2025-01-07'),
(1, '2025-01-10'),
(4, '2025-01-08'),
(3, '2025-01-12');


INSERT INTO order_items (order_id, product_id, quantity) VALUES
((SELECT order_id FROM orders WHERE customer_id = 2 AND order_date = '2025-01-07'), (SELECT product_id FROM products WHERE product_name = 'Sunglass' AND price = 30.00), '2'),
((SELECT order_id FROM orders WHERE customer_id = 3 AND order_date = '2025-01-07'), (SELECT product_id FROM products WHERE product_name = 'Shirts' AND price = 40.00), '3'),
((SELECT order_id FROM orders WHERE customer_id = 1 AND order_date = '2025-01-10'), (SELECT product_id FROM products WHERE product_name = 'Bag' AND price = 50.00), '1'),
((SELECT order_id FROM orders WHERE customer_id = 4 AND order_date = '2025-01-08'), (SELECT product_id FROM products WHERE product_name = 'Cap' AND price = 30.00), '5'),
((SELECT order_id FROM orders WHERE customer_id = 3 AND order_date = '2025-01-12'), (SELECT product_id FROM products WHERE product_name = 'Pants' AND price = 40.00), '4');
