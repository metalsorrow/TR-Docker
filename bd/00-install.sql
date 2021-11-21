set define off

prompt executing 00-Script-Disable-Expired-Password.sql
@00-Script-Disable-Expired-Password.sql

prompt executing 00-Script-create_tbs.sql
@00-Script-create_tbs.sql

prompt login as turismo
conn turismo/turismo;
show user;

prompt executing 01-Script-01_create_tables.sql
@01-Script-01_create_tables.sql

prompt executing 02-Script-02_sequences
@02-Script-02_sequences

prompt executing 03-Script-03_plsql
@03-Script-03_plsql

--SET FEEDBACK ON
prompt all scripts were executed. 
prompt showing errors
show errors;
exit;
