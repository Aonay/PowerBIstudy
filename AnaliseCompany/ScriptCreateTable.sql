-- SCRIPT DE CRIACAO DATABASE

--Ativando reconhecimento de Chave estrangeira no SQLite
PRAGMA foreign_keys = ON;

--CRIANDO TABELAS


-- =========================================================
-- DEPARTMENT
-- =========================================================

CREATE TABLE department (
    Dnumber INTEGER PRIMARY KEY,
    Dname VARCHAR(15) NOT NULL,
    Mgr_ssn CHAR(9),
    Mgr_start_date DATE,
    Dept_create_date DATE,

    FOREIGN KEY (Mgr_ssn)
        REFERENCES employee(Ssn)
);


-- =========================================================
-- EMPLOYEE
-- =========================================================

CREATE TABLE employee (
    Ssn CHAR(9) PRIMARY KEY,
    Fname VARCHAR(15) NOT NULL,
    Minit CHAR(1),
    Lname VARCHAR(15) NOT NULL,
    Bdate DATE,
    Address VARCHAR(30),
    Sex CHAR(1),
    Salary DECIMAL(10,2),
    Super_ssn CHAR(9),
    Dno INTEGER,

    FOREIGN KEY (Super_ssn)
        REFERENCES employee(Ssn),

    FOREIGN KEY (Dno)
        REFERENCES department(Dnumber)
);


-- =========================================================
-- DEPENDENT
-- =========================================================

CREATE TABLE dependent (
    Essn CHAR(9),
    Dependent_name VARCHAR(15),
    Sex CHAR(1),
    Bdate DATE,
    Relationship VARCHAR(8),
    age INTEGER,

    PRIMARY KEY (Essn, Dependent_name),

    FOREIGN KEY (Essn)
        REFERENCES employee(Ssn)
);


-- =========================================================
-- PROJECT
-- =========================================================

CREATE TABLE project (
    Pnumber INTEGER PRIMARY KEY,
    Pname VARCHAR(15) NOT NULL,
    Plocation VARCHAR(15),
    Dnum INTEGER,

    FOREIGN KEY (Dnum)
        REFERENCES department(Dnumber)
);


-- =========================================================
-- WORKS_ON
-- =========================================================

CREATE TABLE works_on (
    Essn CHAR(9),
    Pno INTEGER,
    Hours DECIMAL(3,1),

    PRIMARY KEY (Essn, Pno),

    FOREIGN KEY (Essn)
        REFERENCES employee(Ssn),

    FOREIGN KEY (Pno)
        REFERENCES project(Pnumber)
);


-- =========================================================
-- DEPT_LOCATIONS
-- =========================================================

CREATE TABLE dept_locations (
    Dnumber INTEGER,
    Dlocation VARCHAR(15),

    PRIMARY KEY (Dnumber, Dlocation),

    FOREIGN KEY (Dnumber)
        REFERENCES department(Dnumber)
);
