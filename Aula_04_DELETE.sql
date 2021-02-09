--deleta todos os funcionarios do departamento 10 e mostra quantas linhas foram afetadas
DECLARE
    coluna_id funcionarios.id_departamentos%TYPE :=10;
    BEGIN
        DELETE FROM funcionarios 
        WHERE id_departamento = coluna_id;
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCONT);
    END;
