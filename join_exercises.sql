USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Full Name'
FROM departments AS d
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Full Name'
FROM departments AS d
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT DISTINCT title AS 'Title', COUNT(title) as 'Count'
FROM titles AS t
    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN employees e on t.emp_no = e.emp_no
where t.to_date = '9999-01-01' and de.dept_no = 'd009'
GROUP BY title;

select distinct dept_name as 'Department Name', concat(first_name,' ',last_name), salary
from departments
    join dept_manager dm on departments.dept_no = dm.dept_no
    join employees e on dm.emp_no = e.emp_no
    join salaries s on e.emp_no = s.emp_no
where s.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
order by dept_name

# SELECT DISTINCT t.title AS 'Title', COUNT(t.title) AS 'Count'
# FROM titles AS t
#     JOIN employees e on t.emp_no = e.emp_no
#     JOIN dept_emp de on e.emp_no = de.emp_no
# WHERE t.to_date = '9999-01-01' AND de.dept_no = 'd009'
# ORDER BY t.title;

# SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Full Name', s.salary AS 'Salary'
# FROM departments AS d
#     LEFT JOIN dept_manager dm on d.dept_no = dm.dept_no
#     LEFT JOIN salaries s on dm.emp_no = s.emp_no
#     LEFT JOIN employees e on s.emp_no = e.emp_no
# WHERE dm.to_date = '9999-01-01'
# ORDER BY d.dept_name;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name,' ',e.last_name) as 'Name', salary
from departments as d
    join dept_manager dm on d.dept_no = dm.dept_no
    join employees e on dm.emp_no = e.emp_no
    join salaries s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
order by dept_name;

# Bonus
# SELECT distinct CONCAT(e.first_name,' ',e.last_name), d.dept_name as 'department', e.emp_no
# FROM employees AS e
#     JOIN dept_emp de on e.emp_no = de.emp_no
#     JOIN departments d on de.dept_no = d.dept_no
#     JOIN dept_manager dm on d.dept_no = dm.dept_no
# WHERE de.to_date = '9999-01-01'