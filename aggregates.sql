-- Total number of customers
SELECT COUNT(customer_id) AS total_customers
FROM customers;

-- Average product price
SELECT AVG(price) AS average_price
FROM products;

-- Highest product price
SELECT MAX(price) AS highest_price
FROM products;

-- Total sales amount
SELECT SUM(total_amount) AS total_sales
FROM orders;

-- Total orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

-- Orders per month
SELECT MONTH(order_date) AS order_month,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY MONTH(order_date)
ORDER BY order_month;
