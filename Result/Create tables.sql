CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

CREATE TABLE salaries(
	emp_no FLOAT PRIMARY KEY NOT NULL,
	salary FLOAT
);

CREATE TABLE titles(
	title_ID VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(30)
);

CREATE TABLE employees(
	emp_no FLOAT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_ID),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);

CREATE TABLE dept_emp(
	emp_no FLOAT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE depart_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no FLOAT NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


