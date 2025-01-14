SELECT department_id, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

--HAVING-Klausel
SELECT department_id, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;