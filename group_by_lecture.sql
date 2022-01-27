USE employees;

# SELECT column FROM table GROUP BY column_name;

SELECT DISTINCT first_name
FROM employees;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT COUNT(*) FROM employees;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name
ORDER BY COUNT(first_name) DESC;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT MAX(salary) FROM salaries;

SELECT SUM(salary) FROM salaries;