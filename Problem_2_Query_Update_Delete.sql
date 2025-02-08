SELECT product_name, stock_quantity FROM products;


SELECT product_name, quantity FROM products
JOIN order_items ON products.product_id = order_items.product_id
WHERE order_items.product_id = 3;


SELECT first_name || ' ' || last_name AS full_name, product_id, quantity FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
WHERE customers.customer_id = 3;



UPDATE products
SET stock_quantity = stock_quantity - (SELECT quantity FROM order_items WHERE order_id = 3)
WHERE product_name = 'Bag';


DELETE FROM order_items WHERE order_id = (SELECT order_id FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE first_name = 'Mike' AND last_name = 'Borders'));

DELETE FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE first_name = 'Mike' AND last_name = 'Borders');
