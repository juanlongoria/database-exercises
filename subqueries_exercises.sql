USE employees;

SELECT *
FROM employees
WHERE hire_date IN(
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );


#correct
SELECT title
FROM titles
WHERE emp_no IN(
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );


SELECT DISTINCT t.title
FROM employees e
JOIN titles t ON (t.emp_no = e.emp_no)
WHERE e.first_name IN(
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
    );



SELECT first_name, last_name
FROM employees
# JOIN dept_manager dm ON(dm.emp_no = e.emp_no)
WHERE gender = 'F'
AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
);

#BONUS

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    AND emp_no IN (
        SELECT  emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );

#Bonus 2
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = (SELECT MAX(salary) FROM salaries)
    AND to_date > CURDATE()
    );
