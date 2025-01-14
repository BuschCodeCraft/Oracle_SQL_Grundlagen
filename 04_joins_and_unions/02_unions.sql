-- UNION
SELECT first_name FROM employees
UNION
SELECT department_name FROM departments;

-- UNION ALL
SELECT first_name FROM employees
UNION ALL
SELECT department_name FROM departments;