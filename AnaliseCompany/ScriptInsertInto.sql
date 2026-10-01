INSERT INTO department
    (Dnumber, Dname, Mgr_ssn, Mgr_start_date, Dept_create_date)
VALUES
    (1, 'Administracao', NULL, NULL, '2010-01-15'),
    (2, 'Tecnologia', NULL, NULL, '2012-03-10'),
    (3, 'Financeiro', NULL, NULL, '2011-07-20'),
    (4, 'Recursos Humanos', NULL, NULL, '2013-05-12'),
    (5, 'Marketing', NULL, NULL, '2015-09-01');

INSERT INTO employee
    (Ssn, Fname, Minit, Lname, Bdate, Address, Sex, Salary, Super_ssn, Dno)
VALUES
    ('111111111', 'Carlos', 'A', 'Silva', '1980-04-15', 'Rua das Flores, 100', 'M', 12000.00, NULL, 1),

    ('222222222', 'Mariana', 'B', 'Oliveira', '1985-07-22', 'Av. Brasil, 250', 'F', 10500.00, NULL, 2),

    ('333333333', 'Roberto', 'C', 'Santos', '1978-11-03', 'Rua Central, 45', 'M', 11000.00, NULL, 3),

    ('444444444', 'Patricia', 'D', 'Costa', '1983-02-18', 'Rua das Palmeiras, 80', 'F', 9500.00, NULL, 4),

    ('555555555', 'Fernando', 'E', 'Almeida', '1982-09-30', 'Av. Paulista, 500', 'M', 9800.00, NULL, 5),

    ('666666666', 'Lucas', 'F', 'Martins', '1995-01-12', 'Rua Santos Dumont, 120', 'M', 5500.00, '222222222', 2),

    ('777777777', 'Ana', 'G', 'Souza', '1992-06-25', 'Rua Brasil, 300', 'F', 6200.00, '222222222', 2),

    ('888888888', 'Rafael', 'H', 'Ferreira', '1990-10-09', 'Rua do Comércio, 75', 'M', 5800.00, '333333333', 3),

    ('999999999', 'Juliana', 'I', 'Pereira', '1997-03-17', 'Rua das Acacias, 90', 'F', 4800.00, '444444444', 4),

    ('123456789', 'Diego', 'J', 'Rodrigues', '1994-12-01', 'Rua Principal, 150', 'M', 5100.00, '555555555', 5),

    ('987654321', 'Camila', 'K', 'Mendes', '1996-08-14', 'Av. Central, 400', 'F', 4700.00, '222222222', 2),

    ('456789123', 'Bruno', 'L', 'Gomes', '1991-05-27', 'Rua Nova, 60', 'M', 5300.00, '111111111', 1);
    

UPDATE department
SET Mgr_ssn = '111111111',
    Mgr_start_date = '2010-01-15'
WHERE Dnumber = 1;

UPDATE department
SET Mgr_ssn = '222222222',
    Mgr_start_date = '2012-03-10'
WHERE Dnumber = 2;

UPDATE department
SET Mgr_ssn = '333333333',
    Mgr_start_date = '2011-07-20'
WHERE Dnumber = 3;

UPDATE department
SET Mgr_ssn = '444444444',
    Mgr_start_date = '2013-05-12'
WHERE Dnumber = 4;

UPDATE department
SET Mgr_ssn = '555555555',
    Mgr_start_date = '2015-09-01'
WHERE Dnumber = 5;


INSERT INTO dependent
    (Essn, Dependent_name, Sex, Bdate, Relationship, age)
VALUES
    ('111111111', 'Pedro Silva', 'M', '2010-05-12', 'Filho', 16),
    ('111111111', 'Laura Silva', 'F', '2014-08-20', 'Filha', 12),

    ('222222222', 'Marcos Oliveira', 'M', '2012-03-15', 'Filho', 14),
    ('222222222', 'Julia Oliveira', 'F', '2016-11-10', 'Filha', 10),

    ('333333333', 'Beatriz Santos', 'F', '2008-07-05', 'Filha', 18),

    ('444444444', 'Lucas Costa', 'M', '2011-02-28', 'Filho', 15),
    ('444444444', 'Sofia Costa', 'F', '2015-09-17', 'Filha', 11),

    ('555555555', 'Gabriel Almeida', 'M', '2013-06-21', 'Filho', 13),

    ('666666666', 'Miguel Martins', 'M', '2020-01-13', 'Filho', 6),

    ('777777777', 'Alice Souza', 'F', '2019-04-30', 'Filha', 7);
    
    
INSERT INTO project
    (Pnumber, Pname, Plocation, Dnum)
VALUES
    (101, 'Sistema ERP', 'Santos', 2),
    (102, 'Aplicativo Mobile', 'Sao Paulo', 2),
    (103, 'Auditoria 2026', 'Santos', 3),
    (104, 'Recrutamento', 'Praia Grande', 4),
    (105, 'Campanha Verao', 'Sao Paulo', 5),
    (106, 'Portal Interno', 'Santos', 2),
    (107, 'Controle Custos', 'Sao Paulo', 3),
    (108, 'Treinamento', 'Praia Grande', 4); 


INSERT INTO dept_locations
    (Dnumber, Dlocation)
VALUES
    (1, 'Santos'),
    (1, 'Sao Paulo'),

    (2, 'Santos'),
    (2, 'Sao Paulo'),
    (2, 'Campinas'),

    (3, 'Santos'),

    (4, 'Praia Grande'),
    (5, 'Sao Paulo');
    
    
    
INSERT INTO works_on
    (Essn, Pno, Hours)
VALUES
    ('222222222', 101, 20.0),
    ('222222222', 102, 15.0),
    ('666666666', 101, 30.0),
    ('666666666', 106, 20.0),
    ('777777777', 102, 25.0),
    ('777777777', 106, 15.0),

    ('333333333', 103, 20.0),
    ('333333333', 107, 15.0),
    ('888888888', 103, 30.0),
    ('888888888', 107, 25.0),

    ('444444444', 104, 20.0),
    ('444444444', 108, 15.0),
    ('999999999', 104, 30.0),
    ('999999999', 108, 20.0),

    ('555555555', 105, 25.0),
    ('123456789', 105, 30.0);