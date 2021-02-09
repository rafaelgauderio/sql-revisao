--SELECT INTO
-- Buscar dados de uma coluna ou linha de um tabela e atribuir a variaveis

--atribui a variável coluna nome o nome do cliente com id_cliente 30
--selecionando uma coluna
DECLARE
   coluna_nome cliente.nome%TYPE;
BEGIN 
    SELECT nome INTO coluna_nome
    FROM clientes
    WHERE id_cliente = 30;
    dbms_output.put_line(coluna_nome);
END;

--selecionando uma linha
--Atribui a variável linha_cliente toda a linha da tabela clientes referente ao cliente 100
DECLARE 
    linha_cliente clientes%ROWTYPE;
BEGIN
    SELECT * INTO linha_cliente
    FROM clientes
    WHERE id_cliente = 100;
    dbms_output.put_line(linha_cliente.nome || ' ' || linha_cliente.idade);    
END;

