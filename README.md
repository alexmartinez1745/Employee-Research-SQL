## Background

Tools used: SQL, Jupyter Notebook, Python, Pandas, Matplotlib

Research on employees of the a corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

Designed tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data.

## Steps Taken:

#### Data Modeling

Inspected the six CSVs and sketched out an ERD of the tables. Use of this [Diagram tool](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Created a table schema for each of the CSV files.
  * Made sure to create the tables in the correct order to handle foreign keys.

* Imported each CSV file into the corresponding SQL table.

#### Data Analysis

Once the above steps were complete, the following analysis was done:

1. Listed specific details of each employee, which included: employee number, last name, first name, sex, and salary.

2. Listed first name, last name, and hire date for employees who were hired in the year 1986.

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. Listed the frequency count of employee last names.

## Lastly, SQLAlchemy:

* Generated a visualization of the data by importing the SQL database into Pandas.

* Created a histogram to visualize the most common salary ranges for employees.

* Created a bar chart of average salary by title.

