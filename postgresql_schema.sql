CREATE TABLE employee (
  emp_no INTEGER PRIMARY KEY,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
);



CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
  dept_no VARCHAR(6) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE,
  dept_id INTEGER,
  FOREIGN KEY (dept_id) REFERENCES dept(dept_id),
);


CREATE TABLE dept_mgr (
  dept_no VARCHAR(6) NOT NULL,
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
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
  FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
  title VARCHAR (30) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE
);

CREATE TABLE salary (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
  salary INTEGER NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE,
);

--common edit made
ALTER TABLE dept_mgr
    ADD CONSTRAINT emp_no FOREIGN KEY (emp_no) REFERENCES employee (emp_no);
	
