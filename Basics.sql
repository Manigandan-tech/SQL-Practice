-- Show all products
SELECT * FROM products;

-- Products with price greater than 2000
SELECT * FROM products
WHERE price > 2000;

-- Products between 1000 and 5000
SELECT * FROM products
WHERE price BETWEEN 1000 AND 5000;

-- Customers whose email contains gmail
SELECT * FROM customers
WHERE email LIKE '%gmail%';

-- Customers whose email ends with gmail.com
SELECT * FROM customers
WHERE email LIKE '%gmail.com';

-- Sort products by price descending
SELECT * FROM products
ORDER BY price DESC;

-- Show top 5 expensive products
SELECT TOP 5 * FROM products
ORDER BY price DESC;
