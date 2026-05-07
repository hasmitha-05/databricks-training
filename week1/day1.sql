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

