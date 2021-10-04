--Module Challenge
--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
--W/O Aliases:
SELECT employees.emp_no, employees.first_name, employees.last_name, titles.title, 
titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
	INNER JOIN titles
		ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no

--With Aliases:
SELECT e.emp_no, e.first_name, e.last_name, tit.title, 
tit.from_date, tit.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS tit
		ON e.emp_no = tit.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

DROP TABLE retirement_titles;
SELECT * FROM retirement_titles;



--Unique Titles
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, tit.title, 
tit.from_date, tit.to_date
INTO unique_titles
FROM employees AS e
	INNER JOIN titles AS tit
		ON e.emp_no = tit.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

DROP TABLE unique_titles;
SELECT * FROM unique_titles;

--Number of employees about to retire
SELECT COUNT(e.emp_no), e.title 
INTO retiring_titles
FROM unique_titles AS e
GROUP BY e.title
ORDER BY COUNT(e.emp_no) DESC;
SELECT * FROM retiring_titles



--DELIVERABLE 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, e.last_name, e.birth_date, dt.from_date, dt.to_date, tit.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp AS dt
ON (e.emp_no = dt.emp_no)
INNER JOIN titles AS tit
ON (e.emp_no = tit.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
     AND (dt.to_date = '9999-01-01');


SELECT * FROM mentorship_eligibility

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;
