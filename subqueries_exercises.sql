use employees;

select * from employees e
where e.hire_date IN (
select hire_date from employees where emp_no = 101010
);

select title from titles t where t.emp_no IN (
select emp_no from employees where first_name = 'Aamod');


select e.first_name, e.last_name from employees e where
e.gender = 'F'
AND emp_no IN (
select dm.emp_no from dept_manager dm where to_date > now()
);






