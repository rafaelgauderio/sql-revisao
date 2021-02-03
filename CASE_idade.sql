DECLARE
    idade          NUMBER;
    classificacao  VARCHAR2(25);
BEGIN
    idade := 35;
    CASE
        WHEN
            idade >= 1
            AND idade <= 12
        THEN
            classificacao := 'criança';
        WHEN
            idade >= 13
            AND idade <= 14
        THEN
            classificacao := 'pré-adolescente';
        WHEN
            idade >= 15
            AND idade <= 18
        THEN
            classificacao := 'adolescente';
        WHEN
            idade >= 19
            AND idade <= 45
        THEN
            classificacao := 'adulto';
        WHEN
            idade > 45
            AND idade <= 59
        THEN
            classificacao := 'meia-idade';
        WHEN idade > 59 THEN
            classificacao := 'Idoso';
        ELSE
            classificacao := 'sem classificação';
    END CASE;

    dbms_output.put_line(classificacao);
END;