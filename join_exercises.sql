use employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date > current_date
ORDER BY d.dept_no;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date > current_date
AND e.gender = 'F'
ORDER BY d.dept_no;



SELECT t.title, COUNT(t.title) FROM titles t
JOIN dept_emp de ON de.emp_no = t.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE t.to_date > curdate()
AND de.to_date > curdate()
AND d.dept_name = 'Customer Service'
GROUP BY t.title;



SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary as salary
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
JOIN salaries as s
ON s.emp_no = e.emp_no
WHERE dm.to_date > current_date
AND s.to_date > current_date
ORDER BY d.dept_no;








