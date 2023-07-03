-- List the employee number, last name, first name, sex, and salary of each employee.
select 
	employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from
	employees inner join salaries
		on employees.emp_no = salaries.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
select 
	first_name, last_name, hire_date
from
	employees
where 
	 extract ('Year' from hire_date ) = 1986
;


-- List the manager of each department along with 
-- their department number, department name, 
-- employee number, last name, and first name.

select 
	dept_manager.dept_no, departments.dept_name,
	dept_manager.emp_no, employees.last_name,
	employees.first_name
from
	departments inner join dept_manager 
		on departments.dept_no = dept_manager.dept_no
	inner join employees
		on dept_manager.emp_no = employees.emp_no
;
 

-- List the department number for each employee 
-- along with that employee’s employee number, 
-- last name, first name, and department name.
		
select 
	dept_emp.dept_no , dept_emp.emp_no,
	employees.last_name, employees.first_name,
	departments.dept_name
from
	departments inner join dept_emp
		on departments.dept_no = dept_emp.dept_no
	inner join employees
		on dept_emp.emp_no = employees.emp_no
;


-- List first name, last name, and sex of each
-- employee whose first name is Hercules and whose
-- last name begins with the letter B.

select 
	first_name, last_name, sex
from
	employees
where
	first_name = 'Hercules'
and
	last_name like 'B%'
;


-- List each employee in the Sales department,
-- including their employee number, last name,
-- and first name.

select 
	dept_emp.emp_no, employees.last_name,
	employees.first_name
from
	departments inner join dept_emp
		on 
			departments.dept_no = dept_emp.dept_no 
	inner join employees 
		on 	
			dept_emp.emp_no = employees.emp_no
where
	departments.dept_name = 'Sales'
;


-- List each employee in the Sales and Development
-- departments, including their employee number,
-- last name, first name, and department name.

select 
	dept_emp.emp_no, employees.last_name,
	employees.first_name, departments.dept_name
from
	departments inner join dept_emp
		on 
			departments.dept_no = dept_emp.dept_no 
	inner join employees 
		on 	
			dept_emp.emp_no = employees.emp_no
where
	departments.dept_name = 'Sales'
	or 
	departments.dept_name = 'Development'
;

-- List the frequency counts, in descending order,
-- of all the employee last names (that is, how many
-- employees share each last name).
select 
	last_name, count(last_name) as last_name_freq
from
	employees
group by
	last_name
order
	by count(last_name) desc
;


