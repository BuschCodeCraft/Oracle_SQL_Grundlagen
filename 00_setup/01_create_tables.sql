CREATE TABLE employees (
    employee_id     NUMBER(6)       PRIMARY KEY,
    first_name      VARCHAR2(20),
    last_name       VARCHAR2(25)    NOT NULL,
    email           VARCHAR2(25)    NOT NULL,
    phone_number    VARCHAR2(20),
    hire_date       DATE            NOT NULL,
    job_id          VARCHAR2(10)    NOT NULL,
    salary          NUMBER(8,2),
    commission_pct  NUMBER(2,2),
    manager_id      NUMBER(6),
    department_id   NUMBER(4),
    CONSTRAINT emp_dept_fk FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT emp_job_fk FOREIGN KEY (job_id)
        REFERENCES jobs(job_id),
    CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

CREATE TABLE departments (
    department_id   NUMBER(4)       PRIMARY KEY,
    department_name VARCHAR2(30)    NOT NULL,
    manager_id      NUMBER(6),
    location_id     NUMBER(4)/*,
    CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id),
    CONSTRAINT dept_loc_fk FOREIGN KEY (location_id)
        REFERENCES locations(location_id)*/
);

ALTER TABLE departments 
ADD CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id)
REFERENCES employees(employee_id);

ALTER TABLE departments 
ADD CONSTRAINT dept_loc_fk FOREIGN KEY (location_id)
REFERENCES locations(location_id);

CREATE TABLE jobs (
    job_id          VARCHAR2(10)    PRIMARY KEY,
    job_title       VARCHAR2(35)    NOT NULL,
    min_salary      NUMBER(6),
    max_salary      NUMBER(6)
);

CREATE TABLE locations (
    location_id     NUMBER(4)       PRIMARY KEY,
    street_address  VARCHAR2(40),
    postal_code     VARCHAR2(12),
    city            VARCHAR2(30)    NOT NULL,
    state_province  VARCHAR2(25),
    country_id      CHAR(2),
    CONSTRAINT loc_country_fk FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
);

CREATE TABLE countries (
    country_id      CHAR(2)         PRIMARY KEY,
    country_name    VARCHAR2(40),
    region_id       NUMBER(4)
);