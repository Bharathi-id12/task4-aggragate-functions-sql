
INSERT INTO sales (customer_name, product, quantity, price, sale_date) VALUES
('Alice', 'Pen', 10, 5.00, '2024-06-01'),
('Bob', 'Book', 2, 15.00, '2024-06-02'),
('Alice', 'Book', 1, 15.00, '2024-06-03'),
('Charlie', 'Pen', 5, 5.00, '2024-06-04'),
('David', 'Pencil', 20, 2.00, '2024-06-05');
SELECT * FROM sales;
SELECT SUM(quantity) AS total_quantity FROM sales;
SELECT AVG(price) AS average_price FROM sales;
SELECT COUNT(*) AS total_sales FROM sales;
SELECT product, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product;
SELECT customer_name, SUM(quantity) AS total_bought
FROM sales
GROUP BY customer_name
HAVING total_bought > 5;
