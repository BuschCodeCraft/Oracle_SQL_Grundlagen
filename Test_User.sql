CONNECT SYSTEM/ADMIN333@localhost:1521/ORCLPDB1;

CREATE USER TRAINING_USER IDENTIFIED BY "USER333"
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;

GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE SEQUENCE, CREATE PROCEDURE TO TRAINING_USER;
GRANT SELECT ANY DICTIONARY TO TRAINING_USER; -- optional, falls er Data Dictionary abfragen soll

CONNECT TRAINING_USER/USER333@localhost:1521/ORCLPDB1;

Select * from employees;