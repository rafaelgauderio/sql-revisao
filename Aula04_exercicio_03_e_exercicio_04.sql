CREATE TABLE funcionario
(   codfunc NUMBER(10) CONSTRAINT pK_cod_func2 PRIMARY KEY,
    nome    VARCHAR2(80),
    salario NUMBER(10,2)
);

BEGIN
INSERT INTO funcionario
(codfunc, nome, salario)
VALUES
(1,'Rafael da Silva', 900.50);
dbms_output.put_line(SQL%ROWCOUNT);
END;

BEGIN
INSERT INTO funcionario
(codfunc, nome, salario)
VALUES
(2,'Maria de Souza', 700.50);
dbms_output.put_line(SQL%ROWCOUNT);
END;

BEGIN
INSERT INTO funcionario
(codfunc, nome, salario)
VALUES
(3,'João sem Sobrenome', 1500.50);
dbms_output.put_line(SQL%ROWCOUNT);
END;

--Consultando os dados inseridos
SELECT *
FROM funcionario;

DECLARE
    coluna_codigo funcionario.codfunc%TYPE := 1;
    coluna_nome funcionario.nome%TYPE;
    coluna_salario funcionario.salario%TYPE;    
    BEGIN
        SELECT codfunc, nome, salario INTO coluna_codigo, coluna_nome, coluna_salario
        FROM funcionario     
        WHERE codfunc = coluna_codigo;        
        DBMS_OUTPUT.PUT_LINE('Codigo do funcionario: ' || coluna_codigo
        || ', Nome: ' || coluna_nome || ', Salario: R$' || coluna_salario
        );
        IF (coluna_salario > 800) THEN
        DBMS_OUTPUT.PUT_LINE('Bom salário');
        ELSE
        DBMS_OUTPUT.PUT_LINE('Merece Aumento');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN        
            DBMS_OUTPUT.PUT_LINE('Não existe esse funcionário no cadastro');
    END;