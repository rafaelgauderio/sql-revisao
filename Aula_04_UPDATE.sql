    
--update o salarios de todos os funcionarios do departamento 10 em 30%
DECLARE
    coluna_id funcionarios.id_departamentos%TYPE :=10;
    BEGIN
        UPDATE funcionarios 
        SET salario = salario*1.3
        WHERE id_departamento = coluna_id;
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCONT);
    END;

-- update uma linha inteira de um registro
DECLARE
    linha_cliente clientes%ROWTYPE;
BEGIN
    SELECT * INTO linha_cliente
    FROM clientes
    WHERE id_cliente=10;
    linha_cliente.nome := 'Juliana';
    UPDATE clientes
    SET ROW = linha_cliente
    WHERE id_cliente = linha_cliente.id_cliente;
END;