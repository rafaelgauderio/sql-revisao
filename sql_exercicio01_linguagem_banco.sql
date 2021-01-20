CREATE DATABASE consultorio
USE consultorio;

CREATE TABLE Funcionario
( cod_func integer, nome VARCHAR(50), idade integer, salario double(10,2), setor VARCHAR(30)
);

ALTER TABLE funcionario
ADD PRIMARY KEY (cod_func);

ALTER TABLE funcionario
MODIFY cod_func integer NOT NULL;

SELECT *
FROM funcionario

CREATE TABLE Paciente
(	cod_pac INTEGER PRIMARY KEY NOT NULL,
	nome VARCHAR(50),
    idade INTEGER(3),
    endereco VARCHAR(255),
    prontuario VARCHAR(255),
    cidade VARCHAR(50)
);

CREATE TABLE especialidade
(	cod_especi integer PRIMARY KEY NOT NULL,
	espec varchar(50)
);

CREATE TABLE Medico
(	cod_med integer PRIMARY KEY NOT NULL,
	cremers varchar(20),
    nome varchar(50),
    idade integer(3)
);

#criando chave estrangeira durante a criação da tabela
CREATE TABLE NomeDaTabela (
   Coluna1 INT,
   Coluna2 INT,
   CONSTRAINT PK_NomeDaPK PRIMARY KEY (Coluna1, Coluna2)
)

#alterando para chave primaria duas colunas de outra tabela
ALTER TABLE NomeDaTabela
ADD CONSTRAINT PK_NomeDaPK PRIMARY KEY CLUSTERED (Coluna1, Coluna2)























