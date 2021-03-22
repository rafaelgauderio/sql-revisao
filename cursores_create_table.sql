
CREATE TABLE departamento (
    depNum NUMBER(10),
    nome VARCHAR2(50),
    identEmpGer NUMBER(10),
    CONSTRAINT pk_depNum PRIMARY KEY (depNum)
);

CREATE TABLE empregado (
    identEmp NUMBER(10) NOT NULL,
    nome VARCHAR2(50),
    sal NUMBER(10,2),
    endereco VARCHAR2(80),
    sexo VARCHAR2(10),
    DataNasc DATE,
    depNum NUMBER(10),
    CONSTRAINT pk_identEmp PRIMARY KEY (identEmp),
    CONSTRAINT fk_depNum FOREIGN KEY (depNum) REFERENCES Departamento (depNum)
);

ALTER TABLE departamento
MODIFY identEmpGer NUMBER(10);

ALTER TABLE departamento
ADD CONSTRAINT fkidentEmpGer FOREIGN KEY (IdentEmpGer) REFERENCES empregado (IdentEmp);

CREATE TABLE projeto (
    projNum NUMBER(10),
    nome VARCHAR(30),
    localidade VARCHAR2(50),
    DepNum NUMBER(10),
    CONSTRAINT pk_projNum PRIMARY KEY (projNum),
    CONSTRAINT pk_depNum_projeto FOREIGN KEY (depNum) REFERENCES departamento (depNum)
);

INSERT INTO empregado
(identEmp, nome, sal, endereco, sexo, dataNasc, depNum)
VALUES
(1,'Rafael De Luca', 2500.99, 'Rua Brasil 25', 'masculino',to_date('17/12/1990','DD/MM/YYYY'),2);

INSERT INTO empregado
(identEmp, nome, sal, endereco, sexo, dataNasc, depNum)
VALUES
(2,'Juliana da Silva', 3500.99, 'Rua Moinhos 37', 'feminino',to_date('15/12/1985','DD/MM/YYYY'),1);

INSERT INTO departamento
(depnum, nome, IdentEmpGer)
VALUES
(1, 'Contabilidade',1);

INSERT INTO projeto
(projnum, nome, localidade, depnum)
VALUES
(10, 'Projeto Contábil', 'Porto Alegre',1);

INSERT INTO projeto
(projnum, nome, localidade, depnum)
VALUES
(20, 'Projeto De Software', 'Canoas',2);


INSERT INTO departamento
(depnum, nome, IdentEmpGer)
VALUES
(2, 'TI',2);

SELECT *
FROM empregado
INNER JOIN departamento
ON departamento.depnum = empregado.depnum;

SELECT * FROM empregado;

SELECT * FROM departamento;

SELECT * FROM projeto;














