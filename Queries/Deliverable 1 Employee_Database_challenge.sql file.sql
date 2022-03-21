-- SQL Challenge SQL Query File
-- Deliverable 1:

SELECT emp_no, first_name, last_name
FROM employees;

SELECT title, from_date, to_date
FROM title;

SELECT ce.emp_no,
  ce.first_name,
  ce.last_name,
  ti.title,
  ti.from_date,
  ti.to_date
INTO retiring_titles
FROM employees AS ce
  INNER JOIN title AS ti
    ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;

SELECT * FROM retiring_titles;
-- Checking if code works 
SELECT emp_no, first_name, last_name, title, from_date, to_date FROM title_for_retirement;

-- Dictinct used with Orderby to remove duplicate rows
-- Retrieve emp_no, first_name and last_name columns from the Employees table.

SELECT DISTINCT ON (tfr.emp_no) tfr.emp_no,
tfr.first_name,
tfr.last_name,
tfr.title,
tfr.birth_date
INTO unique_titles
FROM title_for_retirement AS tfr
ORDER BY tfr.emp_no, tfr.to_date DESC;

-- Checking if code works
SELECT emp_no, first_name, Last_name, title FROM	unique_titles

-- Retrieve number  of  employees by their most recent job
-- title who are about to retire.
SELECT COUNT (ut.title), ut.title
INTO retiring_title
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY Count DESC;

-- Checking if code works
SELECT * FROM retiring_titles

