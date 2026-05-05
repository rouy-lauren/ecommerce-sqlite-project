-- display setting
.mode column
.header on

-- structure of the table
.schema orders

-- Show tables
.tables

-- Count rows
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;
SELECT COUNT(*) FROM payments;
SELECT COUNT(*) FROM products;

-- Recent orders query
SELECT order_id, order_purchase_timestamp, order_status
FROM orders
ORDER BY order_purchase_timestamp DESC
LIMIT 20;

-- Query with condition (uses index)
SELECT order_id, order_purchase_timestamp, order_status
FROM orders
WHERE customer_id = 'g3nXeJkGI0Qw'
ORDER BY order_purchase_timestamp DESC
LIMIT 20;

-- Query plan analysis
EXPLAIN QUERY PLAN
SELECT order_id, order_purchase_timestamp, order_status
FROM orders
WHERE customer_id = 'g3nXeJkGI0Qw'
ORDER BY order_purchase_timestamp DESC
LIMIT 20;

-- Join query (order details)
SELECT o.order_id,
       o.order_purchase_timestamp,
       p.product_category_name,
       oi.price,
       oi.shipping_charges
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
LIMIT 10;
