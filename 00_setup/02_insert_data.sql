INSERT ALL
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('AD_PRES', 'President', 20000, 40000)
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('AD_VP', 'Administration Vice President', 15000, 30000)
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('IT_PROG', 'Programmer', 4000, 10000)
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000)
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('SA_REP', 'Sales Representative', 6000, 12000)
  -- Zusätzliche Einträge
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('HR_REP', 'HR Representative', 3500, 7000)
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('AC_ACCOUNT', 'Accountant', 4200, 9000)
  INTO jobs (job_id, job_title, min_salary, max_salary) VALUES ('ST_CLERK', 'Stock Clerk', 2000, 5000)
SELECT 1 FROM dual;

INSERT ALL
  INTO countries (country_id, country_name, region_id) VALUES ('US', 'United States', 1)
  INTO countries (country_id, country_name, region_id) VALUES ('DE', 'Germany', 1)
  INTO countries (country_id, country_name, region_id) VALUES ('UK', 'United Kingdom', 1)
  INTO countries (country_id, country_name, region_id) VALUES ('IN', 'India', 2)
  INTO countries (country_id, country_name, region_id) VALUES ('JP', 'Japan', 2)
  -- Zusätzliche Einträge
  INTO countries (country_id, country_name, region_id) VALUES ('FR', 'France', 1)
  INTO countries (country_id, country_name, region_id) VALUES ('BR', 'Brazil', 2)
  INTO countries (country_id, country_name, region_id) VALUES ('IT', 'Italy', 1)
SELECT 1 FROM dual;

INSERT ALL
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1000, '1297 Via Cola di Rie', '00989', 'Roma', null, 'IT')
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1100, '93091 Calle della Testa', '10934', 'Venice', null, 'IT')
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP')
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', null, 'JP')
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US')
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US')
  -- Zusätzliche Einträge
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1600, '75 Rue de la Paix', '75002', 'Paris', null, 'FR')
  INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1700, 'Avenida Paulista, 1000', '01310-100', 'São Paulo', 'São Paulo', 'BR')
SELECT 1 FROM dual;

Select * from locations;
Select * from departments;

truncate table departments;


INSERT ALL
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (10, 'Administration', 200, 1400)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (20, 'Marketing', 201, 1500)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (30, 'Purchasing', 114, 1700)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (40, 'Human Resources', 203, 1000)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (50, 'Shipping', 121, 1500)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (60, 'IT', 103, 1400)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (70, 'Public Relations', 204, 1100)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (80, 'Sales', 145, 1300)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (90, 'Executive', 100, 1700)
  INTO departments (department_id, department_name, manager_id, location_id) VALUES (100, 'Finance', 108, 1700)
SELECT 1 FROM dual;

ALTER TABLE departments ENABLE CONSTRAINT dept_mgr_fk;
ALTER TABLE departments ENABLE CONSTRAINT dept_loc_fk;


INSERT ALL
  INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
   (100, 'Steven', 'King', 'SKING', '515.123.4567', TO_DATE('17-JUN-03', 'DD-MON-RR'), 'AD_PRES', 24000, NULL, NULL, 90)
  INTO employees VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('21-SEP-05', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90)
  INTO employees VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('13-JAN-01', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90)
  INTO employees VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('03-JAN-06', 'DD-MON-RR'), 'IT_PROG', 9000, NULL, 102, 60)
  INTO employees VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('21-MAY-07', 'DD-MON-RR'), 'IT_PROG', 6000, NULL, 103, 60)
  INTO employees VALUES (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', TO_DATE('25-JUN-05', 'DD-MON-RR'), 'IT_PROG', 4800, NULL, 103, 60)
  INTO employees VALUES (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TO_DATE('05-FEB-06', 'DD-MON-RR'), 'IT_PROG', 4800, NULL, 103, 60)
  INTO employees VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('07-FEB-07', 'DD-MON-RR'), 'IT_PROG', 4200, NULL, 103, 60)
  -- Zusätzliche 15 Einträge
  INTO employees VALUES (108, 'Nancy', 'Green', 'NGREEN', '515.123.4570', TO_DATE('11-APR-04','DD-MON-RR'), 'MK_MAN', 12000, NULL, 101, 20)
  INTO employees VALUES (109, 'John', 'Chen', 'JCHEN', '590.423.4571', TO_DATE('14-DEC-07','DD-MON-RR'), 'IT_PROG', 7000, NULL, 103, 60)
  INTO employees VALUES (110, 'Irene', 'Mikkelsen', 'IMIKKELS', '590.423.4572', TO_DATE('01-JUL-05','DD-MON-RR'), 'HR_REP', 3800, NULL, 102, 40)
  INTO employees VALUES (111, 'Kevin', 'Brown', 'KBROWN', '515.123.4573', TO_DATE('05-AUG-07','DD-MON-RR'), 'AC_ACCOUNT', 4500, NULL, 101, 100)
  INTO employees VALUES (112, 'Laura', 'Wilson', 'LWILSON', '515.123.4574', TO_DATE('09-SEP-06','DD-MON-RR'), 'SA_REP', 6500, 0.1, 101, 80)
  INTO employees VALUES (113, 'Patrick', 'Jones', 'PJONES', '590.423.4575', TO_DATE('24-MAR-04','DD-MON-RR'), 'ST_CLERK', 2500, NULL, 103, 50)
  INTO employees VALUES (114, 'Maria', 'Ramos', 'MRAMOS', '590.423.4576', TO_DATE('12-MAY-05','DD-MON-RR'), 'IT_PROG', 5000, NULL, 103, 60)
  INTO employees VALUES (115, 'Sophie', 'Dubois', 'SDUBOIS', '515.123.4577', TO_DATE('16-JUN-06','DD-MON-RR'), 'MK_MAN', 11000, NULL, 101, 20)
  INTO employees VALUES (116, 'Oliver', 'Smith', 'OSMITH', '590.423.4578', TO_DATE('19-JAN-07','DD-MON-RR'), 'IT_PROG', 5200, NULL, 103, 60)
  INTO employees VALUES (117, 'Rita', 'Jones', 'RJONES', '515.123.4579', TO_DATE('03-OCT-05','DD-MON-RR'), 'AC_ACCOUNT', 4700, NULL, 101, 100)
  INTO employees VALUES (118, 'Victor', 'Perez', 'VPEREZ', '590.423.4580', TO_DATE('30-NOV-06','DD-MON-RR'), 'SA_REP', 6100, 0.05, 101, 80)
  INTO employees VALUES (119, 'Wendy', 'Hu', 'WHU', '515.123.4581', TO_DATE('28-FEB-04','DD-MON-RR'), 'ST_CLERK', 2100, NULL, 103, 50)
  INTO employees VALUES (120, 'Xiao', 'Li', 'XLI', '590.423.4582', TO_DATE('15-APR-05','DD-MON-RR'), 'IT_PROG', 4500, NULL, 103, 60)
  INTO employees VALUES (121, 'Yvonne', 'Miller', 'YMILLER', '515.123.4583', TO_DATE('07-JUN-07','DD-MON-RR'), 'HR_REP', 3900, NULL, 102, 40)
  INTO employees VALUES (122, 'Zara', 'Gonzalez', 'ZGONZALEZ', '590.423.4584', TO_DATE('22-JUL-06','DD-MON-RR'), 'SA_REP', 6800, 0.15, 101, 80)
SELECT 1 FROM dual;

-- Hinzufügen fehlender Manager in die employees-Tabelle
INSERT ALL
  INTO employees (
    employee_id, first_name, last_name, email, phone_number, 
    hire_date, job_id, salary, commission_pct, manager_id, department_id
  ) VALUES (
    200, 'Alice', 'Williams', 'AWILLIAMS', '515.123.4600', 
    TO_DATE('10-JAN-10','DD-MON-RR'), 'HR_REP', 4000, NULL, NULL, 40
  )
  INTO employees (
    employee_id, first_name, last_name, email, phone_number, 
    hire_date, job_id, salary, commission_pct, manager_id, department_id
  ) VALUES (
    201, 'Bob', 'Johnson', 'BJOHNSON', '515.123.4601', 
    TO_DATE('15-FEB-11','DD-MON-RR'), 'MK_MAN', 9500, NULL, NULL, 20
  )
  INTO employees (
    employee_id, first_name, last_name, email, phone_number, 
    hire_date, job_id, salary, commission_pct, manager_id, department_id
  ) VALUES (
    203, 'Charlie', 'Davis', 'CDAVIS', '515.123.4603', 
    TO_DATE('20-MAR-12','DD-MON-RR'), 'AC_ACCOUNT', 5000, NULL, NULL, 100
  )
  INTO employees (
    employee_id, first_name, last_name, email, phone_number, 
    hire_date, job_id, salary, commission_pct, manager_id, department_id
  ) VALUES (
    145, 'Hannah', 'Wilson', 'HWILSON', '515.123.4606', 
    TO_DATE('10-JUL-16','DD-MON-RR'), 'ST_CLERK', 2200, NULL, NULL, 50
  )
  INTO employees (
    employee_id, first_name, last_name, email, phone_number, 
    hire_date, job_id, salary, commission_pct, manager_id, department_id
  ) VALUES (
    204, 'Eve', 'Martinez', 'EMARTINEZ', '515.123.4607', 
    TO_DATE('25-APR-13','DD-MON-RR'), 'SA_REP', 7000, 0.05, NULL, 80
  )
SELECT 1 FROM dual;



ALTER TABLE employees ENABLE CONSTRAINT emp_dept_fk;

