DECLARE
    id_cliente cliente.id_cliente%TYPE;
    nome cliente.nomecliente%TYPE;
    valida_capos EXPEPTION;
BEGIN
    id_cliente := 78;
    nome := 'Carolina Campos';
    if (id_cliente IS NULL) OR (NOME IS NULL)
        THEN RAISE valida_campos;
        ELSE INSERT INTO aluno VALUES (id_cliente, nome);
        END IF;
EXCEPTION
    WHEN valida_campos THEN
        dbms_output.put_line('Preencha todos os campos');
END;