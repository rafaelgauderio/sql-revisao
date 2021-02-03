DECLARE
    grau CHAR(1);
    classificacao VARCHAR2(20);
    
    BEGIN
        grau := 'B';
            CASE grau
                WHEN 'A' THEN classificacao :='Excelente';
                WHEN 'B' THEN classificacao := 'Muito Bom';
                WHEN 'C' THEN classificacao := 'Regular';
                ELSE
                    classificacao := 'Sem grau nenhum';
            END CASE;
        DBMS_OUTPUT.PUT_LINE(classificao);
    END;