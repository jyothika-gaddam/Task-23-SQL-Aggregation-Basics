-- Task 23: SQL Aggregation Basics
-- Compatible with MySQL 8+ and PostgreSQL
-- Dataset: small sample sales table
-- Run this script from top to bottom.

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    employee_name VARCHAR(50),
    region VARCHAR(30),
    product VARCHAR(40),
    quantity INTEGER,
    unit_price DECIMAL(10, 2),
    sale_amount DECIMAL(10, 2),
    sale_month VARCHAR(20)
);

INSERT INTO sales
    (sale_id, employee_name, region, product, quantity, unit_price, sale_amount, sale_month)
VALUES
    (1, 'Anu',    'East',  'Laptop',  2, 500.00, 1000.00, 'January'),
    (2, 'Ravi',   'West',  'Mouse',   5,  20.00,  100.00, 'January'),
    (3, 'Priya',  'East',  'Keyboard',3,  30.00,   90.00, 'February'),
    (4, 'Kiran',  'South', 'Laptop',  1, 500.00,  500.00, 'February'),
    (5, 'Meena',  'West',  'Monitor', 2, 150.00,  300.00, 'March'),
    (6, 'Arjun',  'South', 'Mouse',   4,  20.00,   80.00, 'March'),
    (7, 'Sita',   'East',  'Monitor', 1, 150.00,  150.00, 'March'),
    (8, 'Rahul',  'West',  'Laptop',  1, 500.00,  500.00, 'April'),
    (9, 'Divya',  'South', 'Keyboard',2,  30.00,   NULL,  'April'),
    (10,'Nikhil', 'East',  'Mouse',   6,  20.00,  120.00, 'April');

-- Query 1: Count all sales rows.
SELECT COUNT(*) AS total_sales_rows
FROM sales;

-- Query 2: Count non-NULL sale_amount values.
SELECT COUNT(sale_amount) AS sales_with_amount
FROM sales;

-- Query 3: Calculate total sales amount (NULL values are ignored).
SELECT SUM(sale_amount) AS total_sales
FROM sales;

-- Query 4: Calculate average sale amount (NULL values are ignored).
SELECT AVG(sale_amount) AS average_sale
FROM sales;

-- Query 5: Find the minimum sale amount (NULL values are ignored).
SELECT MIN(sale_amount) AS minimum_sale
FROM sales;

-- Query 6: Find the maximum sale amount (NULL values are ignored).
SELECT MAX(sale_amount) AS maximum_sale
FROM sales;

-- Query 7: Count sales and total sales amount by region.
SELECT
    region,
    COUNT(*) AS number_of_sales,
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region
ORDER BY region;

-- Query 8: Calculate average sale amount by product.
SELECT
    product,
    AVG(sale_amount) AS average_sale
FROM sales
GROUP BY product
ORDER BY product;

-- Query 9: Show regions with total sales greater than 700.
SELECT
    region,
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region
HAVING SUM(sale_amount) > 700
ORDER BY total_sales DESC;

-- Query 10: Summarize sales by month with count, total, and average.
SELECT
    sale_month,
    COUNT(*) AS number_of_rows,
    SUM(sale_amount) AS total_sales,
    AVG(sale_amount) AS average_sale
FROM sales
GROUP BY sale_month
ORDER BY
    CASE sale_month
        WHEN 'January' THEN 1
        WHEN 'February' THEN 2
        WHEN 'March' THEN 3
        WHEN 'April' THEN 4
        ELSE 5
    END;

-- Learning note:
-- COUNT(*) counts rows, including rows where sale_amount is NULL.
-- COUNT(sale_amount), SUM, AVG, MIN and MAX ignore NULL sale_amount values.
-- GROUP BY creates one result row per group; HAVING filters grouped results.
