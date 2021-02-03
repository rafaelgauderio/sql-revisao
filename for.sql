-- não precisa nem declarar variáveis para fazer um for simples
-- apenas nomear a variável implícita índice
BEGIN
    FOR contador IN 1..20
    LOOP
    DBMS_OUTPUT.PUT_LINE(contador);
    END LOOP;
END;
    