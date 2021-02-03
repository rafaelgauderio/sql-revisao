DECLARE
    contador NUMBER := 0;
BEGIN
    WHILE contador <=5
    LOOP
        DBMS_OUTPUT.PUT_LINE('Contador : ' || contador);
        contador := contador +1;
    END LOOP;
END;