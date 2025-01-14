SELECT first_name, last_name, DECODE(department_id, 60, 'IT', 90, 'Executive', 'Other') AS department_name
FROM employees;