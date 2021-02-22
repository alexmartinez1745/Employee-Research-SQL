-- Create table for employees with the emp. number as primary key
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id TEXT,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex TEXT,
	hire_date DATE
); 
-- Display to see if import of csv was successful
SELECT * FROM employees
LIMIT 10;