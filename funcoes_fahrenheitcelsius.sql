CREATE OR REPLACE FUNCTION fahrenheitcelsius (
    tempf NUMBER
) RETURN NUMBER IS
    valorcelcius NUMBER(4, 2);
BEGIN
    valorcelcius := ( tempf - 32 ) / 1.8;
    RETURN valorcelcius;
END;



--

SET SERVEROUTPUT ON;
DECLARE
    celcius NUMBER := 0;
BEGIN
    celcius := fahrenheitcelsius(90);
    dbms_output.put_line('graus em
celcius: ' || celcius);
END;