alter session set "_ORACLE_SCRIPT"=true;
CREATE USER turismo IDENTIFIED BY turismo;
GRANT CONNECT TO turismo;
GRANT CONNECT, RESOURCE, DBA TO turismo;
GRANT CREATE SESSION TO turismo WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO turismo;
