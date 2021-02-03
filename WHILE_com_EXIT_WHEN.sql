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

-- Indicado não usar os instruções EXIT E EXIT WHEN nos loops FOR E WHILE;
