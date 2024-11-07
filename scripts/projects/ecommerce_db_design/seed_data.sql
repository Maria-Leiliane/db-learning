INSERT INTO customers (name, email) VALUES 
('John Doe', 'johndoe@example.com'),
('Jane Smith', 'janesmith@example.com');

INSERT INTO products (name, price, stock) VALUES 
('Produto 1', 100.00, 50),
('Produto 2', 50.00, 100);

INSERT INTO orders (customer_id) VALUES (1), (2);

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES 
(1, 1, 2, 100.00),
(2, 2, 1, 50.00);
