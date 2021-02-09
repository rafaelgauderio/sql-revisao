-- %ROWTYPE traz os campos e tipos correspondentes de uma tabela existente

-- Declarando um variavel do tipo cpf
DECLARE 
    variavel_cpf usuarios.cpf%type;

--Declarando um variavel do tipo registro de acordo com a LINHA de uma tabela
DECLARE
    rec_usuario usuarioS%ROWTYPE;

DECLARE 
    cliente_reg cliente%ROWTYPE;
    
    BEGIN     
        cliente_reg.id_cliente :=1;
        cliente_reg.nome := 'Rafael De Luca';
        cliente_reg.idade := 35;
    END;    

BEGIN
    INSERT INTO funcionarios(id_funcionario, nome, id_departamento, salario)
    VALUES (100, 'Maria da Silva', 10, 20000);
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
END;


                                
                            

