-- n�o precisa nem declarar vari�veis para fazer um for simples
-- apenas nomear a vari�vel impl�cita �ndice
BEGIN
    FOR contador IN 1..20
    LOOP
    DBMS_OUTPUT.PUT_LINE(contador);
    END LOOP;
END;
    