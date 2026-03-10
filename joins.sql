-- Customer names with order ids
SELECT c.customer_name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Customer name with order date
SELECT c.customer_name, o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Product name with quantity sold
SELECT p.product_name, od.quantity
FROM products p
INNER JOIN order_details od
ON p.product_id = od.product_id;

-- Customers who never placed orders
SELECT c.customer_name, c.customer_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
