CREATE TABLE MINHA_LOG
(DT_LOG DATE,
DS_LOG VARCHAR2(4000)
);

INSERT INTO minha_log
(dt_log, ds_log)
VALUES
(SYSDATE, 'Primeiro log teste');

INSERT INTO minha_log
(dt_log, ds_log)
VALUES
(SYSDATE, 'Testar segundo log teste');


--Utilizando o %ROWTYPE que usa os tipos de estruturas já existentes
DECLARE
    registro_log minha_log%ROWTYPE;
    BEGIN
        registro_log.dt_log :=sysdate;
        registro_log.ds_log := 'Eu ' || user || ' serei um excelente desenvolvedor PL/SQL.';
        
        INSERT INTO minha_log VALUES registro_log;
        dbms_output.put_line(SQL%ROWCOUNT);
    END;
    
    
    
-- Utilizando o type para crar um registro em um estrutura ainda não existente
DECLARE 
    TYPE log_info_reg IS RECORD
        ( coluna_data date,
          coluna_descricao_log VARCHAR2(400)
        );
    reg_minha_log log_info_reg;
    BEGIN
        reg_minha_log.coluna_data :=sysdate;
        reg_minha_log.coluna_descricao_log := 'Eu ' || user || 'serei um excelente desenvolvedor Pl/SQL.';
    INSERT INTO minha_log VALUES reg_minha_log;
    END;
    
--Cosultando os registros inseridos
SELECT dt_log, ds_log
FROM minha_log;