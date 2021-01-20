CREATE DATABASE empresa;

USE empresa;

CREATE TABLE Funcionario
(	codfunc	numeric,
	nome	VARCHAR(30),
    salario numeric(7,2),
    idade	numeric,
    setor	VARCHAR(1),
    CONSTRAINT pkcodfunc PRIMARY KEY (codfunc),
    CONSTRAINT checksetor CHECK (setor IN ('A','B','C','D'))
    );

INSERT INTO funcionario
(codfunc, nome, salario, idade, setor)
VALUES
(1, 'Rafael De Luca', 5000, 32, 'A'),
(2, 'Claudio da Silva', 8000, 39, 'B'),
(3, 'Marcio da Silva', 7200, 45, 'C'),
(4, 'Luciana Motta', 8400, 69, 'D');

SELECT *
FROM funcionario;

INSERT INTO funcionario
(codfunc, nome, salario, idade, setor)
VALUES
(5, 'Lagosta De Luca', 4000.45, 47, 'A');

SELECT funcionario.codfunc, funcionario.nome, funcionario.salario, funcionario.idade, funcionario.setor
FROM funcionario
ORDER BY nome DESC;

ALTER TABLE funcionario
ADD email VARCHAR(255);

ALTER TABLE funcionario
ADD endereco VARCHAR(255);

ALTER TABLE funcionario
ADD CPF integer;

ALTER TABLE funcionario
MODIFY codfunc integer NOT NULL;

ALTER TABLE funcionario
add RG INTEGER(10) NOT NULL;








    


