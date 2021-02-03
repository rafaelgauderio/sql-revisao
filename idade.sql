DECLARE
    idade NUMBER := 15;
BEGIN
    IF idade >= 18 THEN
        dbms_output.put_line('Pode votar.');
    ELSE
        dbms_output.put_line('Não pode votar.');
    END IF;
END;