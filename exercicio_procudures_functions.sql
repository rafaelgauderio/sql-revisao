-- 1. Crie a tabela cliente com o seguinte esquema:
-- a. Cliente(cod_cli, nome_cli, email_cli)
-- b. Insira 1 linha na tabela.

CREATE TABLE cliente (
    cod_cli    NUMBER(10)
        CONSTRAINT pk_cod_cli PRIMARY KEY,
    nome_cli   VARCHAR2(50),
    email_cli  VARCHAR2(70)
);

INSERT INTO cliente (
    cod_cli,
    nome_cli,
    email_cli
) VALUES (
    1,
    'Rafael De luca',
    'rafael@gmail.com'
);

INSERT INTO cliente (
    cod_cli,
    nome_cli,
    email_cli
) VALUES (
    2,
    'Cláudia Souza',
    'claudia@gmail.com'
);

SELECT
    *
FROM
    cliente;

--2. Criar uma procedure que deverá receber o código de um cliente e a partir deste dado
--imprimir o seu nome e seu e-mail. Faça o tratamento de exceções para o caso de o dado
--não ser achado na tabela (NO_DATA_FOUND). Apresente a chamada a procedure em
--outro bloco.

CREATE OR REPLACE PROCEDURE prodedureExibeCliente (
    p_cod_cli IN NUMBER
) IS
    v_nome_cli   VARCHAR2(50);
    v_email_cli  VARCHAR2(70);
    dados_nao_encontrados EXCEPTION;
BEGIN
    IF(p_cod_cli IS NULL) THEN RAISE dados_nao_encontrados;
    ELSE    
    SELECT
        nome_cli,
        email_cli
    INTO
        v_nome_cli,
        v_email_cli
    FROM
        cliente
    WHERE
        cod_cli = p_cod_cli;

    dbms_output.put_line('Nome: '
                         || v_nome_cli
                         || ', email: '
                         || v_email_cli);
    END IF;
EXCEPTION
    WHEN dados_nao_encontrados THEN
        dbms_output.put_line('Código do cliente não pode ser nulo');
    WHEN no_data_found THEN
        dbms_output.put_line('Código do cliente não encontrado');
END;

-- Chamando a procedure com cod_cli=2
SET SERVEROUTPUT ON;
DECLARE v_cod_cliente NUMBER :=2;
BEGIN
    prodedureExibeCliente(v_cod_cliente);
END;

-- Testando com parametro null
DECLARE v_cod_cliente NUMBER :=null;
BEGIN
    prodedureExibeCliente(v_cod_cliente);
END;

-- Testando com parametro cod_cli inexistente
DECLARE v_cod_cliente NUMBER :=35;
BEGIN
    prodedureExibeCliente(v_cod_cliente);
END;

