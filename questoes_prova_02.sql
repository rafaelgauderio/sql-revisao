CREATE OR REPLACE PROCEDURE consulta_dependente IS

    CURSOR cursor_dependente IS
    SELECT
        empregado.nome,
        dependente.nome,
        dependente.parentesco
    FROM
             dependente
        INNER JOIN empregado ON empregado.identemp = dependente.identemp;

    nome_empregado         empregado.nome%TYPE;
    nome_dependente        dependente.nome%TYPE;
    parentesco_dependente  dependente.parentesco%TYPE;
BEGIN
    OPEN cursor_dependente;
    LOOP
        FETCH cursor_dependente INTO
            nome_empregado,
            nome_dependente,
            parentesco_dependente;
        dbms_output.put_line('Empregado: '
                             || nome_empregado
                             || ' tem o dependente: '
                             || nome_dependente
                             || ' que é : '
                             || parentesco_dependente);

    END LOOP
CLOSE cursor_dependente;
END;
    
-- chamando a procedure 
SET SERVEROUTPUT ON;

    CLOSE cursor_dependente;
END;