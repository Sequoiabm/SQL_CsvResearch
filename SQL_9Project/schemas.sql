---------------------------------------------------
-- Code written by Sequoia Boubion-McKay ----------
--------------------------------------------------
---------------------------------------------------
-- EMPLOYEE DATABASE SCHEMA              ----------
---------------------------------------------------



---------------------------------------------------
-- Create tables             			 ----------
---------------------------------------------------
---------------------------------------------------
create table titles (
	title_id varchar NOT NULL,
	title varchar NOT NULL,
	PRIMARY KEY (title_id)
);
--select * from titles
-- IMPORTED CSV
---------------------------------------------------------
---------------------------------------------------------
create table employees (
	emp_no int NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	PRIMARY KEY(emp_no)
);
--select * from employees;
-- IMPORTED CSV
---------------------------------------------------------
---------------------------------------------------------
CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);
--select * from departments;
-- IMPORTED CSV
---------------------------------------------------------
---------------------------------------------------------
CREATE TABLE dept_emp(

	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
--select * from dept_emp;
-- IMPORTED CSV
---------------------------------------------------------
---------------------------------------------------------
CREATE TABLE dept_manager(

	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
	
);
--select * from dept_manager;
--DROP TABLE dept_manager;
-- IMPORTED CSV
---------------------------------------------------------
---------------------------------------------------------
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);
--select * from salaries;
-- IMPORTED CSV
---------------------------------------------------------
---------------------------------------------------------





