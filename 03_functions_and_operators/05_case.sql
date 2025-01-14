SELECT first_name, last_name,
CASE
    WHEN salary > 15000 THEN 'High Earner'
    WHEN salary BETWEEN 5000 AND 15000 THEN 'Mid Earner'
    ELSE 'Low Earner'
END AS salary_level
FROM employees;