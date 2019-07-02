-- 1. employee salaries details
SELECT employee.first_name, employee.last_name, employee.gender,salary.salary
FROM employee JOIN salary on employee.emp_no = salary.emp_no;

-- 2. 1986 hire date employees
SELECT employee.first_name, employee.last_name, employee.hire_date
FROM employee
WHERE employee.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY employee.hire_date;

-- 3. manager details
SELECT dept_mgr.dept_no, dept.dept_name, dept_mgr.emp_no, employee.last_name, employee.first_name,  dept_mgr.from_date, dept_mgr.to_date
FROM dept_mgr 
INNER JOIN dept on dept_mgr.dept_no = dept.dept_no
INNER JOIN employee on dept_mgr.emp_no = employee.emp_no;

-- 4. employee details
SELECT employee.emp_no, employee.first_name, employee.last_name, dept.dept_name
FROM employee
INNER JOIN dept_mgr on employee.emp_no = dept_mgr.emp_no
INNER JOIN dept on dept_mgr.dept_no = dept.dept_no;

-- 5. employee first name = Hercules and last name start with B%
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.first_name = 'Hercules' AND employee.last_name LIKE 'B%';

-- 6. sales department employees
SELECT employee.emp_no , employee.last_name, employee.first_name, dept.dept_name
FROM employee
INNER JOIN dept_emp on employee.emp_no = dept_emp.emp_no
INNER JOIN dept on dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales';

-- 7. sales & development employees
SELECT employee.emp_no , employee.last_name, employee.first_name, dept.dept_name
FROM employee
INNER JOIN dept_emp on employee.emp_no = dept_emp.emp_no
INNER JOIN dept on dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development'
ORDER BY dept.dept_name;

-- 8. count of last_name 
SELECT employee.last_name, COUNT( DISTINCT employee.emp_no)
FROM employee
GROUP BY employee.last_name;


-- !Just curious
-- highlevel summary of employees with same last name
SELECT COUNT( DISTINCT employee.last_name) AS unique_lastnames , count( DISTINCT employee.emp_no) AS employees, count( DISTINCT employee.emp_no) / COUNT( DISTINCT employee.last_name) AS num_emp_same_last_name
FROM employee;
