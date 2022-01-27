USE employees;

SELECT *
FROM employees
WHERE first_name
IN ('Irena', 'Vidva', 'Maya')
ORDER BY first_name, emp_no DESC;

SELECT *
FROM employees
WHERE first_name
          IN ('Irena', 'Vidva', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name
          IN ('Irena', 'Vidva', 'Maya')
ORDER BY last_name DESC, first_name DESC;



SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%q%';

# SELECT *
# FROM employees
# WHERE first_name = 'Irena'
# WHERE first_name = 'Vidva'
# WHERE first_name = 'Maya';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%E';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';



SELECT * from employees WHERE (first_name IN ('IRENA')
    OR first_name IN ('Vidya')
    OR first_name IN('Maya'))
AND gender IN ('M')
ORDER BY first_name;