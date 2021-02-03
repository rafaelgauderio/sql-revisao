/* Alternativa ao if
É possível expressas as condições de formas mais claras
    CASE simples
    CASE pesquisado
*/    
-- CASE SIMPLES
CASE    espressao
    WHEN valor1     THEN result1;
    WHEN valor2     THEN result2;
    ELSE result3;
END CASE;

-- CASE PESQUISADO
CASE 
    WHEN condicaboolena1 THEN
    result1;
    WHEN condicaoboolena2 THEN
    result2;
    ELSE
        result3
END CASE;