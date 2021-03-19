-- 1. Criar um bloco anônimo que apresente os nomes dos empregados e o nome do projeto
-- que fazem parte. Apresente com o seguinte formato:
-- Empregado: <fulano de tal> trabalha no <projeto tal>

DECLARE
    CURSOR cursor_projeto IS
    SELECT
        empregado.nome,
        projeto.nome
    FROM
             empregado
        INNER JOIN projeto ON projeto.depnum = empregado.depnum;

    nome_empregado  empregado.nome%TYPE;
    nome_projeto    projeto.nome%TYPE;
BEGIN
    OPEN cursor_projeto;
    LOOP
        FETCH cursor_projeto INTO
            nome_empregado,
            nome_projeto;
        dbms_output.put_line('Empregado: '
                             || nome_empregado
                             || ' trabalha no '
                             || nome_projeto);
    END LOOP;

    CLOSE cursor_projeto;
END;


-- 2. Criar um procedimento com a mesma funcionalidade do exercício 1.

CREATE OR REPLACE PROCEDURE consulta_projeto IS

    CURSOR cursor_projeto IS
    SELECT
        empregado.nome,
        projeto.nome
    FROM
             empregado
        INNER JOIN projeto ON projeto.depnum = empregado.depnum;

    nome_empregado  empregado.nome%TYPE;
    nome_projeto    projeto.nome%TYPE;
BEGIN
    OPEN cursor_projeto;
    LOOP
        FETCH cursor_projeto INTO
            nome_empregado,
            nome_projeto;
        dbms_output.put_line('Empregado: '
                             || nome_empregado
                             || ' trabalha no '
                             || nome_projeto);
    END LOOP;

    CLOSE cursor_projeto;
END;

-- chamada da Procedure
SET SERVEROUTPUT ON;

BEGIN
    consulta_projeto;
END;

-- 3. Criar um procedimento para apresentar o nome de cada um dos departamentos e, ao
-- lado, o nome de cada Gerente:
-- Departamento: <departamento x> Tem o gerente: <gerente Y>

CREATE OR REPLACE PROCEDURE consulta_gerente IS

    CURSOR cursor_gerente IS
    SELECT
        empregado.nome,
        departamento.nome
    FROM
             departamento
        INNER JOIN empregado ON empregado.depnum = departamento.depnum;

    nome_departamento  departamento.nome%TYPE;
    nome_gerente       empregado.nome%TYPE;
BEGIN
    OPEN cursor_gerente;
    LOOP
        FETCH cursor_gerente INTO
            nome_departamento,
            nome_gerente;
        dbms_output.put_line('Departamento: '
                             || nome_departamento
                             || ' tem o gerente '
                             || nome_gerente);
    END LOOP;

    CLOSE cursor_gerente;
END;

-- chamando a procedure 
SET SERVEROUTPUT ON;

BEGIN
    consulta_gerente;
END;