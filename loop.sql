DECLARE
    contador NUMBER :=0;
BEGIN
    LOOP 
        contador:= contador + 1;
        IF contador > 5 THEN
        EXIT;
        END IF;
        DBMS_OUTPUT.PUT_LINE('Dentro do Loop: ' || contador);
    END LOOP;
        DBMS_OUTPUT.PUT_LINE('Depois do Loop: ' || contador);
END;