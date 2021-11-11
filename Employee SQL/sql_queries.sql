// 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
	LEFT JOIN salaries s
	ON e.emp_no = s.emp_no


// 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%'



// 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no, dept_name, m.emp_no, last_name, first_name
FROM departments d
	LEFT JOIN dept_manager m
	ON d.dept_no = m.dept_no
		LEFT JOIN employees e 
		ON e.emp_no = m.emp_no
;


// 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, d.dept_name
FROM departments d
	LEFT JOIN dept_emp f
	ON d.dept_no = f.dept_no
		LEFT JOIN	 employees e
		ON e.emp_no = f.emp_no;



// 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


// 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM departments d
	LEFT JOIN dept_emp f
	ON d.dept_no = f.dept_no
		LEFT JOIN employees e
		ON e.emp_no = f.emp_no
		WHERE d.dept_name = 'Sales'
;



// 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, d.dept_name
FROM departments d
	LEFT JOIN dept_emp f
	ON d.dept_no = f.dept_no
		LEFT JOIN employees e
		ON e.emp_no = f.emp_no
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
;


// 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY count DESC;

