-- INTERSECT
SELECT first_name FROM employees
INTERSECT
SELECT department_name FROM departments;

-- MINUS
SELECT first_name FROM employees
MINUS
SELECT department_name FROM departments;