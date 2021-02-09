DECLARE
    coluna_nome clientes.NOME%TYPE;
    coluna_id cliente.id_cliente%TYPE := &id_cliente;
BEGIN
    SELECT nome INTO coluna_nome
    FROM clientes
    WHERE id_cliente > coluna_id;
        dbms_output.put_line('O nome do cliente é || coluna_nome');        
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('cliente ' || coluna_id || ' não existe.');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('O Banco de dados retornou mais que um cliente');
END;