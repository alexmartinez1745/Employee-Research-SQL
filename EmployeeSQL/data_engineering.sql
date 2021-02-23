-- Data Engineering (creating tables)

-- Create a table for titles with primary key
CREATE TABLE titles(
	title_id TEXT PRIMARY KEY,
	title TEXT
);
-- Display to see if import of csv was successful
SELECT * FROM titles
LIMIT 10;

-- Create table for employees with the emp. number as primary key
-- Reference titles table for title type
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id TEXT,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex TEXT,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
); 
-- Display to see if import of csv was successful
SELECT * FROM employees
LIMIT 10;

-- Create table for departments with the dept. number as primary key
CREATE TABLE departments (
	dept_no TEXT PRIMARY KEY,
	dept_name TEXT
);
-- Display to see if import of csv was successful
SELECT * FROM departments
LIMIT 10;

-- Create table for managers using references to parent tables
CREATE TABLE dept_manager(
	dept_no TEXT,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- Display to see if import of csv was successful
SELECT * FROM dept_manager
LIMIT 10;

-- Create a new table for employees using references to parent tables
CREATE TABLE dept_employee(
	emp_no INT,
	dept_no TEXT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- Display to see if import of csv was successful
SELECT * FROM dept_employee
LIMIT 10;

-- Create a table for salaries using a reference to parent table(employees)
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
);
-- Display to see if import of csv was successful
SELECT * FROM salaries
LIMIT 10;
