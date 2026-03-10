-- Ranking products by price
SELECT product_name, price,
       ROW_NUMBER() OVER (ORDER BY price DESC) AS row_num
FROM products;

-- Rank with gaps
SELECT product_name, price,
       RANK() OVER (ORDER BY price DESC) AS rnk
FROM products;

-- Dense rank
SELECT product_name, price,
       DENSE_RANK() OVER (ORDER BY price DESC) AS dense_rank
FROM products;

-- Top 2 products per category
SELECT product_name, category, price
FROM (
    SELECT product_name, category, price,
           ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS rn
    FROM products
) t
WHERE rn <= 2;
