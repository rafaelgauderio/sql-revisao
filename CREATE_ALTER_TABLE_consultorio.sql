CREATE TABLE Funcionario 
( cod_func NUMBER(10) CONSTRAINT pk_cod_func PRIMARY KEY,
  nome VARCHAR2(50),
  idade NUMBER(4),
  salario NUMBER(10,2),
  setor VARCHAR2(30)
);

CREATE TABLE Paciente
( cod_pac NUMBER(10) CONSTRAINT pk_cod_pac PRIMARY KEY,
  nome VARCHAR2(50),
  idade NUMBER(4),
  endereco VARCHAR2(255),
  prontuario VARCHAR2(50),
  cidade VARCHAR2(30)
);

CREATE TABLE Especialidade
( cod_espec NUMBER(10) CONSTRAINT pk_cod_espec PRIMARY KEY,
  espec VARCHAR2(50)
);

CREATE TABLE Medico
(
 cod_med NUMBER(10) CONSTRAINT pk_cod_med PRIMARY KEY,
 cremers VARCHAR2(30),
 nome VARCHAR2(50),
 idade NUMBER (4)
);

CREATE TABLE Med_Espec
(
  cod_med NUMBER(10), 
  cod_espec NUMBER(10), 
  CONSTRAINT pk_cod_med_cod_espec PRIMARY KEY (cod_med, cod_espec) 
);

ALTER TABLE Med_espec 
ADD CONSTRAINT fk_cod_med_cod_med FOREIGN KEY (cod_med) REFERENCES Medico(cod_med);

ALTER TABLE Med_espec 
ADD CONSTRAINT fk_cod_espec_cod_espec FOREIGN KEY (cod_espec) REFERENCES especialidade(cod_espec);


alter table "MED_ESPEC" 
add constraint "MED_ESPEC_CON" foreign key ("COD_ESPEC") references "ESPECIALIDADE" ("COD_ESPEC");


CREATE TABLE Consulta (
 cod_med NUMBER(10),
 cod_pac NUMBER(10),
 data_hora DATE,
 setor VARCHAR2(30),
 sala NUMBER,
 CONSTRAINT pk_cod_med_cod_pac  PRIMARY KEY (cod_med, cod_pac),
 CONSTRAINT fk_cod_med_cod_med2 FOREIGN KEY (cod_med) REFERENCES Medico (cod_med),
 CONSTRAINT fk_cod_pac_cod_pac  FOREIGN KEY (cod_pac) REFERENCES Paciente (cod_pac)
);

--ALTER TABLE

ALTER TABLE Paciente
ADD cep NUMBER(8);

ALTER TABLE Paciente   --renomendo a tabela
RENAME TO Cliente;

ALTER TABLE paciente RENAME COLUMN        -- renomenado a coluna
prontuario TO historico_do_paciente;


ALTER TABLE cliente
MODIFY nome NOT NULL;


ALTER TABLE cliente
MODIFY nome NULL;

ALTER TABLE cliente
MODIFY nome VARCHAR2(80);

ALTER TABLE medico DROP nome; -- remove apenas o capmpo da tabela

ALTER TABLE medico;		-- remove a tabela inteira e seus dados


ALTER TABLE Med_espec 
ADD CONSTRAINT fk_cod_med_cod_med FOREIGN KEY (cod_med) REFERENCES Medico(cod_med)

ALTER TABLE Med_espec 
ADD CONSTRAINT fk_cod_espec_cod_espec FOREING KEY (cod_espec) REFERENCES especialidade(cod_espec)

alter table "MED_ESPEC" 
add constraint "MED_ESPEC_CON" foreign key ("COD_ESPEC") references "ESPECIALIDADE" ("COD_ESPEC")

# INSERT INTO, UPDATE, DELETE

INSERT INTO Paciente
(cod_pac, nome, idade, endereco, prontuario, cidade)
VALUES
(1, 'Juliana', 35, 'Rua de perto, 'saud�vel', 'Porto Alegre')

INSERT INTO Paciente
(cod_pac, nome, idade, endereco, prontuario, cidade)
VALUES
(2, 'Amanda', 42, 'Rua de Silva 134', 'morrendo', 'Porto Alegre'),
(3, 'Luciana', 39, 'Avenida nova 98', 'covid-19', 'Canoas');

INSERT INTO Funcionario
(cod_func,nome, idade, salario, setor)
VALUES
(2,'Joao da Silva', 32, 3000, 'informatica'),
(3,'Claudia', 25, 3000, 'secretaria'),
(4,'Joao da Silva', 32, 4500, 'manutencao'),
(5,'Alesandra Meia', 65, 5400, 'Contabilidade');

INSERT INTO Medico
(cod_med, cremers, nome, idade)
VALUES
(5, 40466, 'It�lo', 45);

INSERT INTO especialidade
(cod_espec, espec)
VALUES
(6, 'Gastroentereologista');


INSERT INTO consulta
(cod_med, cod_pac, data_hora, setor, sala)
VALUES
(1,4, to_date('14/08/2020','DD/MM/YYYY'),'consultorios',403)

--ATEN��O SE USAR OS COMANDOS UPDATE E DELETE SEM O WHERE VAI SOBRESCREVER TODOS OS REGISTROS DA TABELA

UPDATE funcionario
SET nome = 'Jo�o da Silva Souza'
WHERE codfunc = 1;


DELETE FROM funcionario
WHERE codfunc = 1;