-- Data Analysis

-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees e
JOIN salaries s
ON
(e.emp_no = s.emp_no);

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date
BETWEEN '1986-01-01' and '1986-12-31'
ORDER BY hire_date ASC;

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager m
ON
(d.dept_no = m.dept_no)
JOIN employees e
ON
(m.emp_no = e.emp_no)