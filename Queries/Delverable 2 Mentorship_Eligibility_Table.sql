-- Deliverable 2:
-- Using ERD Write a query to create a Mentorship Eligibility table that holds the 
-- current employees who were born between Ja to participate in a mentorship program.


SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date, 
	de.to_date
INTO employees_complete
FROM employees AS e
INNER JOIN dept_emp AS de
   on (e.emp_no = de.emp_no)
WHERE (e.birth_date) BETWEEN ('1965-01-01')
	AND ('1965-12-31')

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);


SELECT DISTINCT ON (ec.emp_no) ec.emp_no,
	ec.first_name, 
	ec.last_name,
	ec.birth_date,
	ti.from_date, 
	ti.to_date,
	ti.title
INTO employees_mentorship
FROM employees_complete AS ec
INNER JOIN title AS ti
   on (ec.emp_no = ti.emp_no)
WHERE ti.to_date='9999-01-01'
ORDER BY ec.emp_no;

-- Checking if code works
SELECT COUNT (em.emp_no)
 FROM employees_mentorship as em;
SELECT * FROM employees_mentorship