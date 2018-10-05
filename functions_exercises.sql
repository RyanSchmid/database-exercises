USE employees;

-- SELECT emp_no, first_name, last_name
-- FROM employees
-- WHERE first_name = 'Irena' OR
--       first_name = 'Vidya' OR
--       first_name = 'Maya'
-- ORDER BY first_name DESC, last_name DESC;

SELECT emp_no, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC;



