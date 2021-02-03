DECLARE
    numero soma := 1;
BEGIN
    FOR contador IN 1..5 LOOP
        dbms_output.put_line(soma);
        soma := soma + contador;
    END LOOP;
END;