SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1500);
