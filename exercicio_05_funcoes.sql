--5. Criar uma função que deverá receber dois valores e retornar qual o maior entre os dois.
--Apresente a chamada a função em outro bloco.

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
        dbms_output.put_line('Os números são iguais');
    END IF;

    RETURN maior;
END;

-- Chamando a função
SET SERVEROUTPUT ON;
BEGIN
dbms_output.put_line(valor_maior(8,50));
END;