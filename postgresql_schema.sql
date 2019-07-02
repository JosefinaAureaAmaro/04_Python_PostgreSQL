CREATE TABLE employee (
  emp_no INTEGER PRIMARY KEY,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
  dept_emp_id INTEGER,
  FOREIGN KEY (dept_emp_id) REFERENCES dept_emp(dept_emp_id),
  salary_id INTEGER,
  FOREIGN KEY (salary_id) REFERENCES salary(salary_id),
  title_id INTEGER,
  FOREIGN KEY (title_id) REFERENCES titles(title_id)  
);



CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(6) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE,
  dept_id INTEGER,
  FOREIGN KEY (dept_id) REFERENCES dept(dept_id),
  dept_mgr_id INTEGER,
  FOREIGN KEY (dept_mgr_id) REFERENCES dept_mgr(dept_mgr_id),
  dept_emp_id SERIAL PRIMARY KEY
);


CREATE TABLE dept_mgr (
  dept_no VARCHAR(6) NOT NULL,
  emp_no INTEGER NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE,
  dept_mgr_id SERIAL PRIMARY KEY
);

CREATE TABLE dept (
  dept_no VARCHAR(6),
  dept_name VARCHAR(30),
  dept_id SERIAL PRIMARY KEY
);

CREATE TABLE titles (
  emp_no INTEGER NOT NULL,
  title VARCHAR (30) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE,
  title_id SERIAL PRIMARY KEY
);

CREATE TABLE salary (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE,
  salary_id SERIAL PRIMARY KEY
);

SELECT * from employee;