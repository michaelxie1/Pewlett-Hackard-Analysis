--Module Challenge
--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT employees.emp_no, employees.first_name, employees.last_name, titles.title, 
titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
	INNER JOIN titles
		ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no

DROP TABLE retirement_titles;

SELECT * FROM retirement_titles;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;
