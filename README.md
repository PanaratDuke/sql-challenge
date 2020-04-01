### Study SQL
There are six CSV files related to employees information
1) department
2) employees
3) dept_emp
4) dept_manager
5) salaries
6) titles

## Tools 
- runpsql 
- PostgreSQL
- www.quickdatabasediagrams.com
- sqlalchemy
- Jupyter Notebook

## Performed :
1) Data Modeling : 
   Method : Inspected the CSVs and sketched out an ERD of the tables using quickdatabasediagrams.com 
   Output : Folder (EmployeesSQL) File (Employees_ERD.png)
  
2) Data Engineering : Created a table schema for each of the six CSV files.
   Method : Created 6 tables using runpsql. Excuted Files are schemaEmployee.sql and buildEmployee_db
   Output : Folder (EmployeesSQL) File (Employees_table_schemata.sql)
   
3) Data Analysis : 
   1) Created queries to show specific data for analysis
      - List the following details of each employee: employee number, last name, first name, gender, and salary.
      - List employees who were hired in 1986.
      - List the manager of each department with the following information: department number, department name, the manager's employee          number,   last name, first name, and start and end employment dates.
      - List the department of each employee with the following information: employee number, last name, first name, and department             name.
      - List all employees whose first name is "Hercules" and last names begin with "B."
      - List all employees in the Sales department, including their employee number, last name, first name, and department name.
      - List all employees in the Sales and Development departments, including their employee number, last name, first name, and                department     name.
      - In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
      Method : Created queries in postgres
      Output : Folder (EmployeesSQL) File (EmployeeQueries.sql)
   2) Created a histogram to visualize the most common salary ranges for employees.
   3) Created a bar chart of average salary by title.
      Method : 
      - Using sqlalchemy to create connection between postgres and pandas
      - Using matplotlib and pandas to create visualization
      Output : Folder (EmployeesSQL) File (Histogram.ipynb)
      
      
   
   
