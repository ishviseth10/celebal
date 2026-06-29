SELECT *
FROM customers;

SELECT first_name,
       last_name,
       city
FROM customers;

SELECT DISTINCT category
FROM products;

DESCRIBE customers;
DESCRIBE products;
DESCRIBE orders;
DESCRIBE order_items;


INSERT INTO products
VALUES (209, 'Broken Item', 'Electronics', 'TestBrand', -50.00, 100);
