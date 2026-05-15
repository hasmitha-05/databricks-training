--select
SELECT * FROM Employees
SELECT emp_name,salary FROM Employees
SELECT emp_name,department FROM Employees
SELECT emp_name FROM Employees WHERE department='IT'
SELECT emp_name,experience FROM Employees 
--where
SELECT * FROM Employees WHERE salary > 7000
SELECT * FROM Employees WHERE city='Hyderabad'
SELECT * FROM Employees WHERE experience < 4
SELECT * FROM Employees WHERE department='Finance'
SELECT * FROM Employees WHERE salary=52000
--Group By
SELECT department,SUM(salary) FROM Employees GROUP BY department;
SELECT department,AVG(salary) FROM Employees GROUP BY department;
SELECT city,COUNT(*) AS employee_count FROM Employees GROUP BY city;
SELECT department,MAX(salary) AS max_salary FROM Employees GROUP BY department;
SELECT department,MIN(experience) AS min_experience FROM Employees GROUP BY department;
--Having
SELECT department,COUNT(*) AS employee_count FROM Employees GROUP BY department HAVING COUNT(*) > 3;
SELECT department, AVG(salary) AS avg_salary FROM Employees GROUP BY department HAVING AVG(salary)>60000;
SELECT city, COUNT(*) AS employee_count FROM Employees GROUP BY city HAVING COUNT(*)>2;
SELECT department,SUM(salary) AS total_salary FROM Employees GROUP BY department HAVING SUM(salary)>200000;
SELECT department,MAX(salary) AS max_salary FROM Employees GROUP BY department HAVING MAX(salary)>90000;
--Top
SELECT * FROM Employees ORDER BY salary DESC LIMIT 5;
SELECT * FROM Employees ORDER BY experience DESC LIMIT 3;
SELECT * FROM Employees WHERE department='Finance' ORDER BY salary DESC LIMIT 2;
SELECT * FROM Employees WHERE city='Hyderabad' LIMIT 4;
SELECT * FROM Employees ORDER BY salary DESC LIMIT 1;
--distinct
SELECT DISTINCT department FROM Employees;
SELECT DISTINCT city FROM Employees;
SELECT DISTINCT salary FROM Employees;
SELECT DISTINCT department,city FROM Employees;
SELECT DISTINCT experience FROM Employees;
--comparison operators
SELECT * FROM Employees WHERE salary>=80000;
SELECT * FROM Employees WHERE experience<=3;
SELECT * FROM Employees WHERE salary<>45000;
SELECT * FROM Employees WHERE salary<50000;
SELECT * FROM Employees WHERE experience>5;
--Logical Operators
SELECT * FROM Employees WHERE department='IT' AND salary>70000;
SELECT * FROM Employees WHERE city='Hyderabad' OR city='Banglore';
SELECT * FROM Employees WHERE department='HR' AND experience<3;
SELECT * FROM Employees WHERE salary>60000 OR experience>6;
SELECT * FROM Employees WHERE department <> 'sales';
--IN ANND  NOT IN
SELECT * FROM Employees WHERE city IN ('Hyderabad', 'Mumbai');
SELECT * FROM Employees WHERE department IN ('IT', 'Finance');
SELECT * FROM Employees WHERE salary IN (45000,75000,91000);
SELECT * FROM Employees WHERE department NOT IN ('HR','Sales');
--Between
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 80000;
SELECT * FROM Employees WHERE experience BETWEEN 3 AND 6;
SELECT * FROM Employees WHERE emp_id BETWEEN 105 AND 112;
SELECT * FROM Employees WHERE salary NOT BETWEEN 40000 AND 60000;
SELECT * FROM Employees WHERE experience BETWEEN 2 AND 4;
--Like Operator
SELECT * FROM Employees WHERE emp_name LIKE 'R%';
SELECT * FROM Employees WHERE emp_name LIKE '%a';
SELECT * FROM Employees WHERE emp_name LIKE '%v%';
SELECT * FROM Employees WHERE city LIKE 'B%';
SELECT * FROM Employees WHERE department LIKE '%s';

