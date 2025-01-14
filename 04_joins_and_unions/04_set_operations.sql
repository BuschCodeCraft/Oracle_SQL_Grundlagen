-- Dieses Skript demonstriert die Verwendung von Mengenoperationen in SQL.

-- Vorbereitung: Zwei Abfragen erstellen

-- Abfrage 1: Alle Department IDs aus der Tabelle employees
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL;

-- Abfrage 2: Alle Department IDs aus der Tabelle departments
SELECT department_id
FROM departments;

-- UNION: Vereinigung ohne Duplikate
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL
UNION
SELECT department_id
FROM departments;

-- UNION ALL: Vereinigung mit Duplikaten
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL
UNION ALL
SELECT department_id
FROM departments;

-- INTERSECT: Schnittmenge der beiden Abfragen
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL
INTERSECT
SELECT department_id
FROM departments;

-- MINUS: Department IDs, die in employees, aber nicht in departments sind
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL
MINUS
SELECT department_id
FROM departments;

-- MINUS: Department IDs, die in departments, aber nicht in employees sind
SELECT department_id
FROM departments
MINUS
SELECT department_id
FROM employees
WHERE department_id IS NOT NULL;
