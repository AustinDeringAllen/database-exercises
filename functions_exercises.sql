use employees;

SELECT concat(first_name, ' ' ,last_name) AS 'Full_Name' FROM employees
WHERE first_name LIKE 'e%e';

select * from employees where hire_date like ('199%') and birth_date like ('%12-25')
order by birth_date asc, hire_date desc;

select datediff()