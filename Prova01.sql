SET SERVEROUTPUT ON;
DECLARE
    numero_mes  NUMBER;
    nome_mes    VARCHAR(20);
BEGIN
    numero_mes := 5;
    CASE numero_mes
        WHEN 1 THEN
            nome_mes := 'JANEIRO';
        WHEN 2 THEN
            nome_mes := 'FEVEREIRO';
        WHEN 3 THEN
            nome_mes := 'MAR�O';
        WHEN 4 THEN
            nome_mes := 'ABRIL';
        WHEN 5 THEN
            nome_mes := 'MAIO';
        WHEN 6 THEN
            nome_mes := 'JUNHO';
        WHEN 7 THEN
            nome_mes := 'JULHO';
        WHEN 8 THEN
            nome_mes := 'AGOSTO';
        WHEN 9 THEN
            nome_mes := 'SETEMBRO';
        WHEN 10 THEN
            nome_mes := 'OUTUBRO';
        WHEN 11 THEN
            nome_mes := 'NOVEMBRO';
        WHEN 12 THEN
            nome_mes := 'DEZEMBRO';
        ELSE
            dbms_output.put_line('N�o existe m�s correspodente a esse n�mero');
    END CASE;
dbms_output.put_line('Nome do m�s referente ao n�mero informado: ' || nome_mes);

END;

-- Outra quest�o
BEGIN 

 DBMS_OUTPUT.put_line ('Ol� mundo'); 

END;

-- Outra quest�o 
DECLARE

num number;

BEGIN

num := 20;

if num> 0 THEN

DBMS_OUTPUT.PUT_LINE('positivo');

else 

DBMS_OUTPUT.PUT_LINE('negativo');

end if;

END;

-- Quest�o sobre %TYPE
DECLARE
 coluna_nome funcionario.nome%TYPE;
 BEGIN
    SELECT nome INTO coluna_nome
    FROM funcionario
    WHERE codfunc = 10;
    dbms_output.put_line(coluna_nome);
 END;
 
 --
 BEGIN 
    FOR indice IN 1..6
    LOOP
    dbms_output.put_line(indice);
    END LOOP;
 END;   
 
 -- Agora tentano acessar o indice fora do for
 
 BEGIN 
    FOR indice IN 1..6
    LOOP
    dbms_output.put_line(indice);
    END LOOP;
     dbms_output.put_line(indice);
 END;   
 
