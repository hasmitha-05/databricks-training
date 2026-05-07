--Basic Queries
--question 1
SELECT * FROM Employee
--question 2
SELECT
name,
salary
FROM Employee
--question 3
SELECT *
FROM Employee
WHERE age>30
--question 4
SELECT 
name
FROM Department
--question 5
SELECT e.name
FROM Employee e
JOIN Department d
ON e.department_id=d.department_id
WHERE d.name='IT'
--OR
SELECT *
FROM Employee
WHERE department_id=1
--Question 6
SELECT *
FROM Employee
WHERE name LIKE 'J%';
--question 7
SELECT *
FROM Employee
WHERE name LIKE '%e';
--question 8
SELECT *
FROM Employee
WHERE name LIKE '%a%';
--question 9
SELECT *
FROM Employee
WHERE name LIKE '_________';
--question 10
SELECT *
FROM Employee
WHERE name LIKE '_o%';
-- question 11
SELECT *
FROM Employee
WHERE YEAR(hire_date)=2020;
--question 12
SELECT *
FROM Employee
WHERE MONTH(hire_date)=01;
--question 13
SELECT *
FROM Employee
WHERE YEAR(hire_date)<2019;
--Question 14
SELECT *
FROM Employee
WHERE hire_date>='2021-03-01';
--question 15
SELECT *
FROM Employee
WHERE hire_date>= YEAR(CURDATE())- 2 ;
-- Question 16
SELECT SUM(salary) AS total_salary
FROM Employee
--Question 17
SELECT AVG(salary) AS average_salary
FROM Employee
--Question 18
SELECT MIN(salary) AS min_salary
FROM Employee
-- Question 19
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id;
--Question 20
SELECT department_id, AVG(salary) AS total_employees
FROM Employee
GROUP BY department_id;
--Question 21
SELECT SUM(salary),department_id AS total_salary
FROM Employee
GROUP BY department_id;
--question 22
SELECT AVG(age),department_id AS avg_age
FROM Employee
GROUP BY department_id;
--question 23
SELECT YEAR(hire_date) AS year, COUNT(*) AS total_employees
FROM Employee
GROUP BY YEAR(hire_date);
--questionn 24
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;
--question 25
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;
--QUESTION 26
SELECT department_id,COUNT(*) AS total_emp
FROM Employee
GROUP BY department_id
HAVING COUNT(*)>2
--Question 27
SELECT department_id,AVG(salary) AS highest_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary)>55000
--Question 28
SELECT YEAR(hire_date) AS year, COUNT(*) AS total_employees
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*)>1;
--question 29
SELECT department_id,SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary)<100000;
--question 30
SELECT department_id,MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary)>75000;
--question 31
SELECT *
FROM Employee
ORDER BY salary ASC
--QUESTION 32
SELECT *
FROM Employee
ORDER BY age DESC
--Question 33
SELECT *
FROM Employee
ORDER BY hire_date ASC
--Question 34
SELECT *
FROM Employee
ORDER BY department_id, salary;
--Question 35
SELECT department_id,SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary;
--Question 36
SELECT 
Employee.name,
Department.name
FROM Employee
JOIN Department
ON Employee.department_id=Department.department_id
--Question 37
SELECT 
Department.name,
Project.name
FROM Department
JOIN Project
ON Project.department_id=Department.department_id
--Question 38
SELECT 
Employee.name,
Project.name
FROM Project
JOIN Employee
ON Employee.department_id=Project.department_id
--Quesstion 39
SELECT 
Employee.name,
Department.name
FROM Employee
 LEFT JOIN Department
ON Employee.department_id=Department.department_id
--Question 40
SELECT 
Employee.name,
Department.name
FROM Department
LEFT JOIN Employee
ON Employee.department_id=Department.department_id
--Question 41
SELECT 
Employee.name
FROM Employee
LEFT JOIN Project
ON Employee.department_id=Project.department_id
WHERE Project.project_id IS NULL;
--Question 42
SELECT 
Employee.name,
COUNT(Project.project_id) AS total_projects
FROM Employee
JOIN Project
ON Employee.department_id=Project.department_id
GROUP BY Employee.name;
--Question 43
SELECT 
Department.name
FROM Department
LEFT JOIN Employee
ON Employee.department_id=Department.department_id
WHERE Employee.emp_id IS NULL;

