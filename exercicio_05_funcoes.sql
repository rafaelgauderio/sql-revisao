--5. Criar uma fun��o que dever� receber dois valores e retornar qual o maior entre os dois.
--Apresente a chamada a fun��o em outro bloco.

CREATE OR REPLACE FUNCTION valor_maior (
    n1  NUMBER,
    n2  NUMBER
) RETURN NUMBER IS
    maior NUMBER(4);
BEGIN
    IF ( n1 > n2 ) THEN
        maior := n1;
    ELSIF ( n2 > n1 ) THEN
        maior := n2;
    ELSE
        dbms_output.put_line('Os n�meros s�o iguais');
    END IF;

    RETURN maior;
END;

-- Chamando a fun��o
SET SERVEROUTPUT ON;
BEGIN
dbms_output.put_line(valor_maior(8,50));
END;