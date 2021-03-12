--3. Crie a tabela cliente com o seguinte esquema:
--a. Funcionario(cod_func, nome, idade, salario, setor)
-- b. insira 3 linhas na tabela

CREATE TABLE funcionario (
    cod_func  NUMBER(10)
        CONSTRAINT pk_cod_func PRIMARY KEY,
    nome      VARCHAR2(50),
    idade     NUMBER(4),
    salario   NUMBER(10, 2),
    setor     VARCHAR2(30)
);

INSERT INTO funcionario (
    cod_func,
    nome,
    idade,
    salario,
    setor
) VALUES (
    1,
    'Rafael Silva',
    32,
    3000,
    'informatica'
);

    INSERT INTO funcionario 
    (cod_func,nome,idade,salario,setor)
    VALUES
    (2,'Claudia Xavier',25,3000,'secretaria');

INSERT INTO funcionario (
    cod_func,
    nome,
    idade,
    salario,
    setor
) VALUES (
    3,
    'Luciana Freud',
    40,
    4500,
    'manutencao'
);

INSERT INTO funcionario (
    cod_func,
    nome,
    idade,
    salario,
    setor
) VALUES (
    4,
    'Maur�cio Freud',
    47,
    4200,
    'manutencao'
);

INSERT INTO funcionario (
    cod_func,
    nome,
    idade,
    salario    
) VALUES (
    5,
    'Lorena',
    52,
    4800   
);

--4. Criar uma procedure que dever� retornar a maior idade de funcion�rio. Apresente a
-- chamada a procedure em outro bloco.

CREATE OR REPLACE FUNCTION maioridade RETURN NUMBER IS
    maior_idade NUMBER;
BEGIN
    SELECT
        MAX(idade)
    INTO maior_idade
    FROM
        funcionario;
    RETURN maior_idade;
END;
    
--chamando em outro bloco
SET SERVEROUTPUT ON;
DECLARE
    idade_maxima NUMBER;
BEGIN
    idade_maxima := maioridade();
    dbms_output.put_line('A idade do maior funcion�rio: ' || idade_maxima);
END;

-- 6. Considerando a tabela Funcionario(cod_func, nome, idade, salario, setor), fa�a uma
--fun��o que retorne a quantidade de funcion�rios que n�o trabalham em nenhum setor.
--Apresente a chamada a fun��o.

CREATE OR REPLACE FUNCTION quantfuncionario
RETURN NUMBER IS
    qtd NUMBER;
BEGIN
    SELECT
        COUNT(*)
    INTO qtd
    FROM
        funcionario
    WHERE
        setor IS NULL;
        RETURN qtd;
   
END;

--chamando a funcao
SET SERVEROUTPUT ON;
DECLARE quantidade NUMBER(5);
BEGIN
     quantidade := quantfuncionario();
     dbms_output.put_line('Quantidade de funcion�rios que n�o trabalham em nenhum setor: ' || quantidade);    
END;


    
        

