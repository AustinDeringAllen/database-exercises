USE employees;

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

# WRONG
SELECT DISTINCT title AS 'Title', COUNT(title) as 'Count'
FROM titles AS t
    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN employees e on t.emp_no = e.emp_no
where t.to_date = '9999-01-01' and de.dept_no = 'd009'
GROUP BY title;

# RIGHt
SELECT t.title AS 'Title', COUNT(*) AS 'Count'
from titles AS t
    JOIN employees e
        ON t.emp_no = e.emp_no
    JOIN dept_emp de
        ON e.emp_no = de.emp_no
    JOIN departments d
        ON de.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%' AND d.dept_name = 'Customer Service' AND t.to_date LIKE '9999%'
group by t.title
order by t.title;
#

select distinct dept_name as 'Department Name', concat(first_name,' ',last_name), salary
from departments
    join dept_manager dm on departments.dept_no = dm.dept_no
    join employees e on dm.emp_no = e.emp_no
    join salaries s on e.emp_no = s.emp_no
where s.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
order by dept_name

#
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager Name', s.salary AS 'Salary'
FROM employees as e
    JOIN salaries s on e.emp_no = s.emp_no
    JOIN dept_emp de on e.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no


# Bonus
SELECT distinct CONCAT(e.first_name,' ',e.last_name), d.dept_name as 'department', dm.first_name
FROM employees AS e
    JOIN dept_emp de on e.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no
    JOIN dept_manager dm on d.dept_no = dm.dept_no
WHERE de.to_date = '9999-01-01'