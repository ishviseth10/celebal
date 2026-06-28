SELECT *
FROM customers;

SELECT first_name,
       last_name,
       city
FROM customers;

SELECT DISTINCT category
FROM products;

PRAGMA table_info(customers);
PRAGMA table_info(products);
PRAGMA table_info(orders);
PRAGMA table_info(order_items);

INSERT INTO products
VALUES (209, 'Broken Item', 'Electronics', 'TestBrand', -50.00, 100);
