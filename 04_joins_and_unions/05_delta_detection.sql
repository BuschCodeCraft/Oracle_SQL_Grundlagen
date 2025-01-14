-- Dieses Skript vergleicht zwei Tabellen, um neue, geänderte und gelöschte Datensätze zu identifizieren.

-- Annahme: Es gibt zwei Tabellen mit identischer Struktur
-- employees_backup: Die Sicherungstabelle (alte Daten)
-- employees_new: Die aktuelle Tabelle mit neuen Daten

-- Vorbereitung: Erstellen von Beispieltabellen für die Demonstration

-- 1. Erstellen der Sicherungstabelle
CREATE TABLE employees_backup AS
SELECT * FROM employees;

-- 2. Erstellen der neuen Tabelle
CREATE TABLE employees_new AS
SELECT * FROM employees;

-- 3. Modifizieren der neuen Tabelle
-- 3a. Hinzufügen eines neuen Mitarbeiters
INSERT INTO employees_new (employee_id, first_name, last_name, email, hire_date, job_id, department_id)
VALUES (999, 'Max', 'Mustermann', 'MMUSTER', SYSDATE, 'IT_PROG', 60);

-- 3b. Aktualisieren des Gehalts eines bestehenden Mitarbeiters
UPDATE employees_new
SET salary = salary * 1.1
WHERE employee_id = 103;

-- 3c. Löschen eines Mitarbeiters
DELETE FROM employees_new
WHERE employee_id = 104;

COMMIT;

-- Delta-Detection

-- 1. Identifizieren neuer Datensätze (in employees_new, nicht in employees_backup)
SELECT 'NEW' AS change_type, en.*
FROM employees_new en
WHERE en.employee_id NOT IN (SELECT employee_id FROM employees_backup);

-- 2. Identifizieren gelöschter Datensätze (in employees_backup, nicht in employees_new)
SELECT 'DELETED' AS change_type, eb.*
FROM employees_backup eb
WHERE eb.employee_id NOT IN (SELECT employee_id FROM employees_new);

-- 3. Identifizieren geänderter Datensätze (gleicher employee_id, aber unterschiedliche Daten)
SELECT 'UPDATED' AS change_type, en.*
FROM employees_new en
JOIN employees_backup eb ON en.employee_id = eb.employee_id
WHERE (en.first_name <> eb.first_name OR
       en.last_name <> eb.last_name OR
       en.email <> eb.email OR
       en.salary <> eb.salary OR
       en.job_id <> eb.job_id OR
       en.department_id <> eb.department_id);

-- Bereinigen der temporären Tabellen (optional)
-- DROP TABLE employees_backup PURGE;
-- DROP TABLE employees_new PURGE;
