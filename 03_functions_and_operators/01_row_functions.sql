--Zeichenkettenfunktionen
SELECT UPPER(first_name), LOWER(last_name), LENGTH(email)
FROM employees;

--Mathematische Funktionen
SELECT salary, salary * 12 AS annual_salary
FROM employees;

--Datumsfunktionen
SELECT first_name, last_name, hire_date, SYSDATE - hire_date AS days_employed
FROM employees;