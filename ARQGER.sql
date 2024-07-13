SET SERVEROUTPUT ON;    
BEGIN

 BEGIN
       EXECUTE IMMEDIATE 'DROP TABLE LOG_PESSOA';
       DBMS_OUTPUT.put_line('TABELA LOG_PESSOA EXCLUIDA.');
   EXCEPTION
       WHEN OTHERS THEN
            IF SQLCODE != -942 THEN
                RAISE;
            END IF;
   END;
   
   EXECUTE IMMEDIATE '
  CREATE TABLE LOG_PESSOA
(
  LOG_DATA_HORA DATE,
  LOG_USU VARCHAR2(30),
  LOG_COD_OPER CHAR(1),
  LOG_MACHINE VARCHAR2(64),
  LOG_USER VARCHAR2(30),
  LOG_PE_ID NUMBER(9)
)';
   DBMS_OUTPUT.put_line('TABELA LOG_PESSOA CRIADA.');

EXECUTE IMMEDIATE '
CREATE OR REPLACE TRIGGER PESSOA_AI

    AFTER INSERT ON PESSOA
    FOR EACH ROW

DECLARE

    Scoduserlog VARCHAR2(30);

BEGIN

    IF (Globais.Coduser IS NULL) THEN
        Scoduserlog := USER;
    ELSE
        Scoduserlog := Globais.Coduser;
    END IF;

    INSERT INTO LOG_PESSOA
        (LOG_DATA_HORA,
         LOG_USU,
         LOG_COD_OPER,
         LOG_MACHINE,
         LOG_USER,
         LOG_PE_ID)
    VALUES
        (SYSDATE,
         Scoduserlog,
         ''I'',
         Userenv(''TERMINAL''),
         Sys_Context(''USERENV'', ''OS_USER''),
         :NEW.PE_Id);

END;
';
DBMS_OUTPUT.put_line('TRIGGER PESSOA_AI CRIADA.');










END;

