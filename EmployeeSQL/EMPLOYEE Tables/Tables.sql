-- Create Titles Table 
CREATE TABLE titles (
    title_id VARCHAR(6) NOT NULL,
    title VARCHAR(25) NOT NULL,
	PRIMARY KEY (title_id)
); 

--SELECT * FROM titles

-- Create Employees  Table 
CREATE TABLE employees (
	emp_no VARCHAR(6) NOT NULL,
	emp_title_id VARCHAR(6) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)	
);

-- SELECT * FROM employees

-- Create Departments Table 
CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no)
);

 -- SELECT * FROM departments 


-- Create Department Manager Table 
CREATE TABLE dept_manager (
   	dept_no VARCHAR(6) NOT NULL,
   	emp_no VARCHAR(6) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- SELECT * FROM dept_manager

-- Create Department Employee  Table 
CREATE TABLE dept_emp (
    emp_no VARCHAR(6) NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- SELECT * FROM dept_emp

-- Create Salaries Table 
CREATE TABLE salaries (
    emp_no VARCHAR(6) NOT NULL,
    salary INT NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- SELECT * FROM salaries