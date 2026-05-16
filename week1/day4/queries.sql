SELECT employee_name,department,salary , ROW_NUMBER() OVER(ORDER BY salary DESC) FROM employees;
SELECT employee_name,department,salary,RANK() OVER(ORDER BY salary DESC) AS rank_num FROM employees;
SELECT employee_name,department,salary,DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num FROM employees;
SELECT employee_name,department,salary,ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num FROM employees LIMIT 3;
SELECT employee_name,department,salary,RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank FROM employees;
SELECT *,RANK() OVER(ORDER BY salary) AS rank_num FROM employees;
SELECT *,SUM(total_amount) OVER(ORDER BY order_date) AS total_amount FROM orders;
SELECT *,SUM(total_amount) OVER(PARTITION BY employee_id ORDER BY order_date) AS total_amount FROM orders;
SELECT *,LAG(total_amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS total_amount FROM orders;
SELECT *,LEAD(total_amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS total_amount FROM orders;
SELECT *,total_amount-LAG(total_amount) OVER(ORDER BY order_date) AS total_amount FROM orders;

SELECT *,NTILE(4) OVER(ORDER BY salary DESC) AS quartile FROM employees;
