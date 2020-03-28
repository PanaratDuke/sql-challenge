--1 List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no);

--2 List employees who were hired in 1986.
--if switch from where de.emp_no to e.emp_no will get less result
SELECT e.emp_no, e.last_name, e.first_name, extract(year from from_date) as year 
from employees e
join dept_emp de
on (e.emp_no = de.emp_no)
where de.emp_no in
(
	select emp_no
	from dept_emp
	where extract(year from from_date) = '1986'
);

--3 List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
CREATE VIEW manager_status AS
select d.departments, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments d
join dept_manager dm
on (d.departments = dm.dept_no)
	join employees e
	on (dm.emp_no = e.emp_no)
;

select * from manager_status;

--4 List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
CREATE VIEW employees_in_department AS
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on (e.emp_no = de.emp_no)
	join departments d
	on (d.departments = de.dept_no)
;

select * from employees_in_department;

--5 List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and Last_name like 'B%';

--6 List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
--Question if select create view, it will show 'employees_in_sales_department' is already exist.
CREATE VIEW employees_in_sales_department AS
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on (e.emp_no = de.emp_no)
	join departments d
	on (d.departments = de.dept_no)
	where dept_no in
	(
		select departments
		from departments
		where dept_name = 'Sales'
	);

select * from employees_in_sales_department;

--7 List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
CREATE VIEW employees_in_sales_and_development_department AS
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on (e.emp_no = de.emp_no)
	join departments d
	on (d.departments = de.dept_no)
	where dept_no in
	(
		select departments
		from departments
		where dept_name = 'Sales' or dept_name = 'Development'	
	)
order by dept_name ASC;

select * from employees_in_sales_and_development_department;

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(emp_no) as Count_Lastname
FROM employees
GROUP BY last_name;

--Epilogue hahah April Fooldsday Technique Leader
select e.emp_no, e.first_name, e.last_name
from employees e
where e.emp_no = 499942;

select e.emp_no, e.first_name, e.last_name, tt.title
from employees e
join titles tt
on (e.emp_no = tt.emp_no)	
where e.emp_no = 499942;

