-- CTE for customer spending
WITH customer_spending AS (
    SELECT c.customer_name,
           SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_name
)
SELECT *
FROM customer_spending
WHERE total_spent > 30000;

-- Highest spending customer
WITH customer_spending AS (
    SELECT c.customer_name,
           SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_name
)
SELECT TOP 1 *
FROM customer_spending
ORDER BY total_spent DESC;

-- Top 3 customers by spending
WITH customer_spending AS (
    SELECT c.customer_name,
           SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_name
)
SELECT TOP 3 *
FROM customer_spending
ORDER BY total_spent DESC;
