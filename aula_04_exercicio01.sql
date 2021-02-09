CREATE TABLE MINHA_LOG
(DT_LOG DATE,
DS_LOG VARCHAR2(4000)
);

DECLARE 
    TYPE log_info_reg IS RECORD
    ( dt minha_log.dt_log%TYPE,
      texto_log minha_log.ds_log%TYPE      
    );
    registro_log log_info_reg;
    BEGIN    
    registro minha_log.dt := sysdate;
    registro minha_log.texto_log := 'Eu' || user || 'serei um excelente desenvolvedor Pl/SQL.';
    INSERT INTO minha_log VALUES registro_log;
    END;
    


