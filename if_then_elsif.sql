DECLARE
    quant_vendas NUMBER := 35000;
    percentual_comissao NUMBER (10,2) := 0;
    BEGIN
        IF  quant_vendas > 2000 THEN
            percentual_comissao := quant_vendas * 0.1;
        ELSIF quant_vendas <= 20000 AND quant_vendas >= 10000   THEN
            percentual_comissao := quant_vendas * 0.05;
        ELSIF quant_vendas <= 1000 AND quant_vendas >=5000  THEN
            percentual_comissao := quant_vendas * 0.03;
        ELSE
            percentual_comissao := quant_vendas * 0.02;
        END IF;
        DBMS_OUTOUT.PUT_LINE('percentual comissao: ' || percentual_comissao);
  END;