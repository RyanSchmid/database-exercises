USE EMPLOYEES;


SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
        birth_date AS DOB
FROM EMPLOYEES
LIMIT 10;





