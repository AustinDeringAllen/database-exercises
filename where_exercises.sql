# # CMD Enter to choose what to run
# USE employees;
#
# SELECT * FROM employees WHERE hire_date = '1985-01-01';
#
# # Middle of the name; Anywhere in name;
# select first_name from employees where first_name like '%sus%';
# # Beginning of name
# select first_name from employees where first_name like 'sus%';
# # End of name
# select first_name from employees where first_name like '%nd';
#
# select distinct first_name from employees;
#
# select emp_no, first_name, last_name
# from employees
# where emp_no between 10026 and 10082;
#
# # IN = Includes
# select emp_no, first_name, last_name
# from employees
# where last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
#
# # Not Null
# select emp_no, title
# from titles
# where to_date is not null;
#
# # Chaining Where Clauses
# select emp_no, first_name, last_name
# from employees
# where last_name in ('Herber','Baek')
#   and emp_no < 20000;
#
# # No grouping
# select emp_no, first_name, last_name
# from employees
# where emp_no < 20000
#     and last_name in ('Herber','Baek')
#    or first_name = 'Shridhar';
#
# # Grouping
# select emp_no, first_name, last_name
# from employees
# where emp_no < 20000
#   and (
#             last_name in ('Herber','Baek')
#         or first_name = 'Shridhar'
#     );
#
# # The first one with no grouping is (emp_no && last_name) || Shridhar
# # Second one is where emp_no < 20000 && (last_name || first_name

USE employees;

# First Half
select * from employees where first_name in ('Irena','Vidya','Maya');

select * from employees where last_name like 'e%';

select * from employees where hire_date like ('199%');

select * from employees where birth_date like ('%12-25');

select * from employees where last_name like ('%q%');

# Second Half
select * from employees where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';

select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
and gender = 'M';

select * from employees where last_name like ('e%') or last_name like ('%e');

select * from employees where last_name like ('e%') and last_name like ('%e');

select * from employees where hire_date like ('199%') and birth_date like ('%12-25');

select * from employees where last_name like ('%q%') and last_name not like ('%qu%');
