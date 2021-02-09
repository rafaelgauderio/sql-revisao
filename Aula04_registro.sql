-- RECORD (REGISTRO) são utilizados principalmente para carregar dados de uma tabela e manipulá-los

DECLARE
    TYPE cliente_info_reg IS RECORD
    (   codigo NUMBER(10),
        nomecliente VARCHAR(100),
        idade   NUMBER(6)            
    );    
        registro_cliente cliente_info_reg;
        BEGIN
                    registro_cliente.nomecliente := 'Joao da Silva';
                    DBMS_OUTPUT.PUT_LINE(registro_cliente.nomecliente);
        END;        
--inserindo na tabela cliente o regisrto criado
DECLARE 
    TYPE cliente_info_reg IS RECORD
    (
        codigo cliente.codigo%TYPE,
        nomecliente cliente.nome%TYPE,
        idade cliente.idade%TYPE
    );
        registro_cliente cliente_info_reg;
    BEGIN
        registro cliente.codigo := 114;
        registro cliente.nomecliente := 'Rafael da Silva';
        registro cliente.idade :=37;
        INSERT INTO cliente VALUES registro_cliente;
    END;
