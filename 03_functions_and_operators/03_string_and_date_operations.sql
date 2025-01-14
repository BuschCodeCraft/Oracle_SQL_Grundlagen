-- Dieses Skript demonstriert die Verwendung von Zeichenketten- und Datumsfunktionen in SQL.

-- Zeichenkettenfunktionen

-- 1. Verkettung von Zeichenketten mit CONCAT und dem Verkettungsoperator (||)
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

SELECT first_name, last_name, first_name || ' ' || last_name AS full_name
FROM employees;

-- 2. Extrahieren von Teilstrings mit SUBSTR
SELECT email, SUBSTR(email, 1, 3) AS email_prefix
FROM employees;

-- 3. Finden der Position eines Zeichens mit INSTR
SELECT email, INSTR(email, '@') AS at_position
FROM employees;

-- 4. Bestimmen der Länge einer Zeichenkette mit LENGTH
SELECT last_name, LENGTH(last_name) AS name_length
FROM employees;

-- 5. Umwandlung in Groß- und Kleinbuchstaben mit UPPER und LOWER
SELECT first_name, UPPER(first_name) AS upper_name, LOWER(first_name) AS lower_name
FROM employees;

-- 6. Ersetzen von Zeichenketten mit REPLACE
SELECT email, REPLACE(email, 'example.com', 'mycompany.com') AS new_email
FROM employees;

-- 7. Entfernen von Leerzeichen mit TRIM
SELECT '   ' || first_name || '   ' AS padded_name,
       TRIM(' ' FROM '   ' || first_name || '   ') AS trimmed_name
FROM employees;

-- 8. Auffüllen von Zeichenketten mit LPAD und RPAD
SELECT employee_id, LPAD(employee_id, 6, '0') AS padded_id
FROM employees;

-- Datumsfunktionen

-- 1. Aktuelles Datum und Uhrzeit mit SYSDATE und CURRENT_DATE
SELECT SYSDATE AS current_sysdate, CURRENT_DATE AS current_date FROM dual;

-- 2. Formatieren von Datumsangaben mit TO_CHAR
SELECT hire_date, TO_CHAR(hire_date, 'DD.MM.YYYY') AS formatted_hire_date
FROM employees;

-- 3. Berechnen der Anzahl von Monaten zwischen zwei Daten mit MONTHS_BETWEEN
SELECT first_name, last_name, hire_date,
       MONTHS_BETWEEN(SYSDATE, hire_date) AS months_employed
FROM employees;

-- 4. Hinzufügen von Monaten zu einem Datum mit ADD_MONTHS
SELECT hire_date, ADD_MONTHS(hire_date, 6) AS six_months_later
FROM employees;

-- 5. Ermitteln des nächsten Wochentags mit NEXT_DAY
SELECT SYSDATE AS today, NEXT_DAY(SYSDATE, 'MONDAY') AS next_monday FROM dual;

-- 6. Letzter Tag des Monats mit LAST_DAY
SELECT SYSDATE AS today, LAST_DAY(SYSDATE) AS last_day_of_month FROM dual;

-- 7. Konvertieren von Zeichenketten in Datum mit TO_DATE
SELECT TO_DATE('25-12-2022', 'DD-MM-YYYY') AS christmas_2022 FROM dual;

-- 8. Extrahieren von Teilen eines Datums mit EXTRACT
SELECT hire_date,
       EXTRACT(YEAR FROM hire_date) AS hire_year,
       EXTRACT(MONTH FROM hire_date) AS hire_month,
       EXTRACT(DAY FROM hire_date) AS hire_day
FROM employees;
