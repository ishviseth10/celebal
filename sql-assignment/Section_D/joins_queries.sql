SELECT o.order_id,
       o.order_date,
       c.first_name,
       c.last_name,
       o.total_amount
FROM   orders     o
INNER JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date;

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       o.order_id,
       o.order_date,
       o.status,
       o.total_amount
FROM   customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_date;

SELECT  oi.order_id,
        p.product_name,
        oi.quantity,
        oi.unit_price,
        oi.discount_pct,
        ROUND(oi.quantity * oi.unit_price * (1 - oi.discount_pct / 100), 2)
            AS line_total
FROM    order_items oi
JOIN    orders      o  ON oi.order_id   = o.order_id
JOIN    products    p  ON oi.product_id = p.product_id
ORDER BY oi.order_id, p.product_name;

SELECT c.customer_id, c.first_name, o.order_id
FROM   customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.first_name, o.order_id, o.total_amount
FROM   customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_id, c.first_name, o.order_id
FROM   customers c LEFT JOIN orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id, c.first_name, o.order_id
FROM   customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;

INSERT INTO orders
VALUES (1012, 999, '2024-09-01', 'Pending', 500.00);