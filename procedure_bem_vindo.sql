CREATE OR REPLACE PROCEDURE
bemvindo_msg(p_name IN VARCHAR2)
IS
BEGIN
 dbms_output.put_line('Bem-vindo ao Oracle' ||
' ' || p_name);
END;


SET SERVEROUTPUT ON;
BEGIN
 bemvindo_msg('Rafael');
END;
