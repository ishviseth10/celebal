
SELECT order_id,
       customer_id,
       order_date,
       status,
       total_amount
FROM   orders
WHERE  status = 'Delivered';


SELECT product_id,
       product_name,
       brand,
       unit_price
FROM   products
WHERE  category   = 'Electronics'
  AND  unit_price > 2000;


SELECT customer_id,
       first_name,
       last_name,
       city,
       join_date
FROM   customers
WHERE  join_date >= '2024-01-01'
  AND  join_date <  '2025-01-01'
  AND  state = 'Maharashtra';


SELECT order_id,
       customer_id,
       order_date,
       status,
       total_amount
FROM   orders
WHERE  order_date BETWEEN '2024-08-10' AND '2024-08-25'
  AND  status != 'Cancelled';


SELECT *
FROM   customers
WHERE  YEAR(join_date) = 2024;


SELECT *
FROM   customers
WHERE  join_date >= '2024-01-01'
  AND  join_date <  '2025-01-01';