SELECT s.student_name,d.department_name FROM Student s JOIN Department d ON s.department_id=d.department_id;
SELECT s.staff_name,d.department_name FROM Staff s LEFT JOIN Department d ON s.department_id=d.department_id;
SELECT d.department_name FROM Department d LEFT JOIN Student s ON s.department_id=d.department_id WHERE s.student_id IS NULL;
SELECT s.student_name FROM Student s LEFT JOIN Mark m ON s.student_id=m.student_id WHERE m.student_id IS NULL;
SELECT s.subject_name FROM Subject s LEFT JOIN Staff st ON st.staff_id=s.staff_id WHERE st.staff_id IS NULL;
SELECT department_id,AVG(cgpa) FROM Student GROUP BY department_id;
SELECT department_id,AVG(cgpa) FROM Student GROUP BY department_id HAVING AVG(cgpa)>8.0;
SELECT department_id,COUNT(*) FROM Student GROUP BY department_id;
SELECT subject_id,MAX(marks),MIN(marks)FROM Mark GROUP BY subject_id;
SELECT DISTINCT student_id FROM Mark WHERE marks>90;
SELECT s.student_name FROM Student s JOIN Department d ON s.department_id=d.department_id WHERE d.department_name = 'Computer Science Department';
SELECT staff_id,COUNT(subject_id) FROM Subject GROUP BY staff_id;
SELECT student_id,sum(marks) AS total_marks FROM Mark GROUP BY student_id;
SELECT department_id , COUNT(*) FROM Staff GROUP BY department_id HAVING COUNT(*)>2;
SELECT student_id ,cgpa FROM Student WHERE cgpa>(SELECT AVG(cgpa) FROM Student);
SELECT staff_name ,salary FROM Staff s WHERE salary>(SELECT AVG(salary) FROM Staff WHERE department_id=s.department_id);
SELECT salary FROM Staff ORDER BY salary DESC LIMIT 1 OFFSET 1;
SELECT s.student_name, sub.subject_name, m.marks FROM Mark m JOIN Student s ON m.student_id = s.student_id JOIN Subject sub ON m.subject_id = sub.subject_id WHERE m.marks = (SELECT MAX(m2.marks) FROM Mark m2 WHERE m.subject_id = m2.subject_id)
SELECT s.student_name,m.marks FROM Student s LEFT JOIN Mark m ON s.student_id=m.student_id
SELECT subject_id,AVG(marks) FROM Mark GROUP BY subject_id HAVING AVG(marks)<70;
SELECT * FROM Student ORDER BY cgpa DESC;
SELECT department_name,SUM(salary) FROM Department d  LEFT JOIN Staff s ON d.department_id = s.department_id GROUP BY d.department_id, department_name
SELECT department_name,SUM(salary) FROM Department d  LEFT JOIN Staff s ON d.department_id = s.department_id GROUP BY d.department_id,department_name HAVING SUM(salary)>200000;
SELECT * FROM Student WHERE admission_year>2021 AND cgpa>7.5;
SELECT admission_year,COUNT(student_id) FROM Student GROUP BY admission_year ;
SELECT city,COUNT(*) FROM Student GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1 ;
SELECT d.department_name,COUNT(s.staff_id) FROM Department d LEFT JOIN Staff s ON d.department_id=s.department_id GROUP BY d.department_name;
SELECT s.student_name,m.marks FROM Student s LEFT JOIN Mark m ON s.student_id=m.student_id WHERE marks<50; 
SELECT * FROM Staff WHERE hire_date < '2018-01-01';
SELECT d.department_id,department_name FROM Department d JOIN Staff s ON d.department_id = s.department_id GROUP BY d.department_id,department_name HAVING SUM(s.salary IS NULL) = 0
SELECT student_name,student_id,cgpa,ROW_NUMBER() OVER(ORDER BY cgpa DESC) AS row_numbers FROM Student;
SELECT student_name,student_id,cgpa,RANK() OVER(ORDER BY cgpa DESC) AS rank_row FROM Student;
SELECT *,DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_raank_row FROM Staff;
SELECT * FROM (SELECT student_id, SUM(marks) AS total_marks, DENSE_RANK() OVER(ORDER BY SUM(marks) DESC) AS rnk FROM Mark GROUP BY student_id) t WHERE rnk <= 3;
SELECT student_id,subject_id,marks,SUM(marks)OVER(PARTITION BY student_id ORDER BY subject_id) AS running_total FROM Mark;
SELECT student_id,subject_id,AVG(marks)OVER(PARTITION BY subject_id ) AS running_total FROM Mark;
SELECT s.student_id, student_name, m.subject_id, marks,LAG(marks)over(PARTITION BY s.student_id ORDER BY m.subject_id) AS previous_marks FROM Student s LEFT JOIN Mark m ON s.student_id = m.student_id;
SELECT s.student_id, student_name, m.subject_id, marks,LEAD(marks)over(PARTITION BY s.student_id ORDER BY m.subject_id) AS next_marks FROM Student s LEFT JOIN Mark m ON s.student_id = m.student_id;
SELECT s.student_id, student_name, m.subject_id, marks,MAX(marks)over(PARTITION BY s.student_id ORDER BY m.subject_id) AS max_marks FROM Student s LEFT JOIN Mark m ON s.student_id = m.student_id;
SELECT exam_date,AVG(marks)OVER(ORDER BY exam_date) AS avg_marks FROM Mark;
SELECT student_id,student_name,department_name FROM(SELECT s.student_id,student_name,department_name,dense_rank() OVER(PARTITION BY s.department_id ORDER BY s.admission_year) AS admission_rank FROM Student s LEFT JOIN Department d ON s.department_id = d.department_id)x WHERE admission_rank =1
SELECT *FROM(SELECT staff_id,staff_name,hire_date,dense_rank() over (PARTITION BY s.department_id ORDER BY hire_date DESC) AS hire_rank FROM Staff s LEFT JOIN Department d ON s.department_id = d.department_id)x WHERE hire_rank = 1;
SELECT student_id,student_name,cgpa,NTILE(4) OVER(PARTITION BY cgpa) AS cgpa_quartile FROM Student;
SELECT student_id,student_name,cgpa,percent_rank() OVER(ORDER BY cgpa DESC) AS rank_percentage FROM Student;
SELECT staff_name,salary,CUME_DIST() OVER(ORDER BY salary DESC) AS cumulative_distribution FROM Staff;
SELECT * FROM (SELECT s.student_name,sub.subject_name,m.marks,AVG(m.marks) OVER (PARTITION BY m.subject_id) AS subject_avg FROM Mark m JOIN Student s ON m.student_id = s.student_id JOIN Subject sub ON m.subject_id = sub.subject_id) x WHERE marks > subject_avg;
SELECT department_name, salary_avg,overall_avg FROM (SELECT d.department_id,d.department_name, AVG(s.salary) OVER (PARTITION BY d.department_id) AS salary_avg,AVG(s.salary) OVER () AS overall_avg FROM Staff s JOIN Department d ON s.department_id = d.department_id) x WHERE salary_avg > overall_avg
SELECT student_name FROM (SELECT s.student_id,student_name,marks,AVG(m.marks) OVER (PARTITION BY s.department_id) AS department_avg FROM Mark m JOIN Student s ON m.student_id = s.student_id JOIN Department d ON s.department_id = d.department_id) x WHERE marks> department_avg
SELECT * FROM (SELECT marks,DENSE_RANK() OVER(ORDER BY marks DESC) AS dense_ran FROM Mark) x WHERE dense_ran = 3
SELECT s.student_name,d.department_name,sub.subject_name,m.exam_type,m.marks,AVG(m.marks) OVER(PARTITION BY d.department_id) AS department_average,DENSE_RANK() OVER(ORDER BY m.marks DESC) AS overall_rank FROM Mark m JOIN  Student s ON  m.student_id = s.student_id JOIN  Department d ON s.department_id = d.department_id JOIN Subject sub ON m.subject_id = sub.subject_id



