-- Second highest price
SELECT MAX(price)
FROM products
WHERE price < (
    SELECT MAX(price)
    FROM products
);

-- Third highest price
SELECT MAX(price)
FROM products
WHERE price < (
    SELECT MAX(price)
    FROM products
    WHERE price < (
        SELECT MAX(price)
        FROM products
    )
);

-- Customers who spent more than average order value
SELECT c.customer_name, o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.total_amount >
(
    SELECT AVG(total_amount)
    FROM orders
);
