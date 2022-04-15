1. I want to know how many employees with each title were born after 1965-01-01.

SELECT COUNT(e.emp_no) AS quantity, t.title AS title FROM employees e JOIN titles 
t ON e.emp_no = t.emp_no WHERE e.birth_date > '1965-01-01' GROUP BY t.title;

2. I want to know the average salary per title.

SELECT FORMAT(AVG(s.salary), 2) AS 'Average Salary Per Title', t.title AS title 
FROM salaries s JOIN titles t ON s.emp_no = t.emp_no GROUP BY t.title;


3. How much money was spent on salary for the marketing department between the years 1990 and 1992?

SELECT SUM(s.salary) AS total FROM salaries s JOIN employees e on e.emp_no = s.emp_no
JOIN dept_emp de on s.emp_no = de.emp_no JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Marketing' AND s.to_date BETWEEN '1990-01-01' AND '1992-12-31';