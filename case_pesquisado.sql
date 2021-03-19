SET SERVEROUTPUT ON; 

BEGIN 

 DBMS_OUTPUT.put_line ('Olá mundo'); 

END;



DECLARE
    quant_vendas  NUMBER;
    comissao      NUMBER;
BEGIN
    quant_vendas := 15000;
    CASE
        WHEN quant_vendas > 20000 THEN
            comissao := 0.2;
        WHEN
            quant_vendas <= 20000
            AND quant_vendas >= 10000
        THEN
            comissao := 0.15;
        WHEN
            quant_vendas < 10000
            AND quant_vendas >= 5000
        THEN
            comissao := 0.1;
        ELSE
            comissao := 0;
    END CASE;

    dbms_output.put_line('comissao é '
                         || comissao * 100
                         || '%');
END;


    

            
        
        
