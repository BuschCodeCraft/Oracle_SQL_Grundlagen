CREATE VIEW emp_view AS
SELECT employee_id, first_name, last_name, department_id
FROM employees
WHERE department_id = 60;