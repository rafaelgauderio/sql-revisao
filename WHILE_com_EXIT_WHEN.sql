DECLARE
    contador NUMBER :=1;
BEGIN
    WHILE contador <= 6
        LOOP
            DBMS_OUTPUT.PUT_LINE('Contador : ' || contador);
            contador := contador + 1;
            EXIT WHEN contador = 4;
        END LOOP;   
END;

-- Indicado n�o usar os instru��es EXIT E EXIT WHEN nos loops FOR E WHILE;
