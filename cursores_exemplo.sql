-- Exemplo de cursosres expl�citos
DECLARE
    CURSOR empxdep IS
    SELECT *
    FROM
        empregado
    WHERE
        depnum = 1;

    reg empregado%rowtype;
BEGIN
    OPEN empxdep;
    LOOP
        FETCH empxdep INTO reg;
        EXIT WHEN empxdep%notfound;
        dbms_output.put_line(reg.lastname);
    END LOOP;

    CLOSE empxdep;
END;