--Question 1
select employees.emp_no, employees.last_name, employees.first_name,salaries.salary
from employees,salaries
where employees.emp_no = salaries.emp_no;


select hire_date from employees;

--Question 2
select * from employees
where hire_date > '1986-01-01'
order by hire_date;


--Question 3
select d.dept_no, d.dept_name, e.emp_no,
e.last_name, e.first_name, dm.from_date, dm.to_date
from departments as d, employees as e, dept_manager as dm
where (d.dept_no = dm.dept_no) and (e.emp_no = dm.emp_no);


--Question 4

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where (e.emp_no = de.emp_no) and (d.dept_no = de.dept_no);


--Question 5
select emp_no, first_name,last_name
from employees
where first_name = 'Hercules' and last_name like 'B%';


--Qsuestion 6
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e, departments as d,dept_emp as de
where d.dept_name='Sales' and (d.dept_no=de.dept_no) and (e.emp_no=de.emp_no);


--Quetstion 7
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e, departments as d,dept_emp as de
where (d.dept_name='Sales' or d.dept_name='Development')
and (d.dept_no=de.dept_no) and (e.emp_no=de.emp_no);


--Question 8
select last_name, count(last_name) as emp_count
from employees
group by last_name
order by emp_count desc;