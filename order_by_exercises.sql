USE employees;

select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
    and gender = 'M' order by last_name, first_name;

select * from employees where last_name like ('e%') or last_name like ('%e') order by emp_no desc;

select * from employees where last_name like ('e%e') order by emp_no desc;

select * from employees where hire_date like ('199%') and birth_date like ('%12-25')
order by birth_date asc, hire_date desc;
