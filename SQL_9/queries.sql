SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1987-01-01'



SELECT a.emp_no, a.dept_no, b.dept_name, c.first_name, c.last_name, c.hire_date, a.to_date
FROM dept_manager a, departments b, employees c
WHERE a.dept_no = b.dept_no AND a.emp_no = c.emp_no


SELECT c.emp_no, b.dept_name, c.first_name, c.last_name
FROM dept_emp a, departments b, employees c
WHERE a.dept_no = b.dept_no AND a.emp_no = c.emp_no

SELECT * 
FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B'

SELECT c.emp_no, b.dept_name, c.first_name, c.last_name
FROM dept_emp a, departments b, employees c
WHERE a.dept_no = b.dept_no AND a.emp_no = c.emp_no AND b.dept_name = 'Sales';

SELECT c.emp_no, b.dept_name, c.first_name, c.last_name
FROM dept_emp a, departments b, employees c
WHERE a.dept_no = b.dept_no AND a.emp_no = c.emp_no 
AND (b.dept_name = 'Sales' OR b.dept_name = 'Development');

SELECT
last_name, COUNT(*) as last_name_count
FROM
employees
GROUP BY
last_name
ORDER BY
last_name_count DESC

SELECT a.emp_no, a.first_name, a.last_name, a.gender, b.salary
FROM employees a, salaries b
WHERE a.emp_no = b.emp_no
ORDER BY salary DESC;

