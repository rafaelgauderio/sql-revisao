BEGIN
    FOR  contador IN REVERSE 1..15
         LOOP
         DBMS_OUTPUT.PUT_LINE(contador);
         END LOOP;
END;