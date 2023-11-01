--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT s.emp_no, s.salary, e.last_name, e.first_name, e.sex
FROM employees AS e
JOIN salaries AS s
ON s.emp_no = e.emp_no

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date LIKE '______1986'


--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT e.first_name, e.last_name, e.emp_no,d.dept_name, de.dept_no 
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d 
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no


--5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'



--6. List each employee in the Sales department, including their employee number, last name, and first name

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales'

--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'


--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT (first_name) AS "same_last_name"
FROM employees 
GROUP BY last_name
ORDER BY same_last_name desc

































