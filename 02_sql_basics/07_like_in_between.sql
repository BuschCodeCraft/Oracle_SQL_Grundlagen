-- LIKE
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'K%';

-- IN
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (60, 90);

-- BETWEEN
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN TO_DATE('01-JAN-05', 'DD-MON-RR') AND TO_DATE('31-DEC-06', 'DD-MON-RR');