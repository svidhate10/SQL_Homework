CREATE TABLE employees(
emp_no int PRIMARY KEY,
birth_date date NOT NULL,
first_name varchar(30) NOT NULL,
last_name varchar(30),
gender varchar(10),
hire_date date NOT NULL);


create table departments(
dept_no varchar(20) primary key,
dept_name varchar(30));


CREATE TABLE dept_manager(
dept_no varchar(20) REFERENCES departments(dept_no),
emp_no int REFERENCES employees(emp_no),
from_date date,
to_date date);

CREATE TABLE titles(
emp_no int REFERENCES employees(emp_no),
title varchar(50) NOT NULL,
from_date date,
to_date date);


CREATE TABLE salaries(
emp_no int REFERENCES employees(emp_no),
salary float,
from_date date,
to_date date);


CREATE TABLE dept_emp(
emp_no int REFERENCES employees(emp_no),
dept_no varchar(20) REFERENCES departments(dept_no),
from_date date,
to_date date);


select * from departments;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;