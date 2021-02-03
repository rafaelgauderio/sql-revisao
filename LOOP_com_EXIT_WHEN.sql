DECLARE
    contador NUMBER := 0;
    BEGIN
        LOOP
            contador := contador +1;
            EXIT WHEN contador > 4;
        DBMS_OUTPUT.PUT_LINE('Dentro do loop: ' || contador);
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Fora (depois) do loop: ' || contador);
    END;