DECLARE
    numero NUMBER := 8;
BEGIN
    FOR contador IN 1..10 LOOP
        dbms_out.put_line(contador
                          || ' x 8 = '
                          || contador * numero);
    END LOOP;
END;