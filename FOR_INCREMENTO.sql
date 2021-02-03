DECLARE 
    incremento NUMBER :=2;
    BEGIN
        FOR     contador IN 1..10
            LOOP
                DBMS_OUTPUT.PUT_LINE(contador * incremento);
            END LOOP;
    END;