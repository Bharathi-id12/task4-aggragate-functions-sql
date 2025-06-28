# task4-aggragate-functions-sql
Task 4: Using SQL Aggregate Functions and GROUP BY to summarize and analyze data. Includes queries using SUM, COUNT, AVG, GROUP BY, and HAVING on a sample sales dataset.
Query outputs:

 1. SELECT * FROM sales;

id	customer_name	product	quantity	price	sale_date

1	Alice	Pen	10	5.00	2024-06-01
2	Bob	Book	2	15.00	2024-06-02
3	Alice	Book	1	15.00	2024-06-03
4	Charlie	Pen	5	5.00	2024-06-04
5	David	Pencil	20	2.00	2024-06-05


 2. SELECT SUM(quantity) AS total_quantity FROM sales;

total_quantity

38


 3. SELECT AVG(price) AS average_price FROM sales;

average_price

8.40


 4. SELECT COUNT(*) AS total_sales FROM sales;

total_sales

5

 5. SELECT product, SUM(quantity) AS total_quantity FROM sales GROUP BY product;

product	total_quantity

Pen	15
Book	3
Pencil	20



 6. SELECT customer_name, AVG(quantity) AS avg_quantity FROM sales GROUP BY customer_name;

customer_name	avg_quantity

Alice	5.5
Bob	2
Charlie	5
David	20



 7. SELECT product, SUM(quantity) AS total_quantity FROM sales GROUP BY product HAVING total_quantity > 10;

product	total_quantity

Pen	15
Pencil	20


 8. SELECT customer_name, SUM(quantity) AS total_bought FROM sales GROUP BY customer_name HAVING total_bought > 5;

customer_name	total_bought

Alice	11
David	20



