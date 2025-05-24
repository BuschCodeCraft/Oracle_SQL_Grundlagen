# 00_setup

Dieser Ordner enthält die Skripte zur Einrichtung der erforderlichen Datenbanktabellen und zum Einfügen von Beispieldaten.

## Dateien

- **01_create_tables.sql**: Erstellt die benötigten Tabellen für die Schulung.
- **02_insert_data.sql**: Fügt Beispieldaten in die erstellten Tabellen ein.
- **README.md**: Diese Anleitung.

## Anweisungen

1. **Tabellen erstellen**:

   - Verbinden Sie sich mit Ihrer Oracle-Datenbank als Benutzer mit entsprechenden Rechten.
   - Führen Sie `01_create_tables.sql` aus.

2. **Daten einfügen**:

   - Führen Sie `02_insert_data.sql` aus, um die Tabellen mit Daten zu füllen.

3. **Überprüfung**:

   - Stellen Sie sicher, dass die Tabellen korrekt erstellt wurden und Daten enthalten.
   - Führen Sie beispielsweise aus:

     ```sql
     SELECT * FROM employees;
     ```

## Hinweise

- Die Skripte sollten in der angegebenen Reihenfolge ausgeführt werden.
- Stellen Sie sicher, dass keine Namenskonflikte mit bestehenden Tabellen auftreten.

---

Nach Abschluss dieses Setups können Sie mit den weiteren Übungen fortfahren. Viel Spaß!
