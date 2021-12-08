set define off

prompt executing 00-Script-Disable-Expired-Password.sql
@00-Script-Disable-Expired-Password.sql

prompt executing 00-Script-create_tbs.sql
@00-Script-create_tbs.sql

prompt login as turismo
conn turismo/turismo;
show user;

prompt executing 01-Script-01_create_tables.sql
--SET FEEDBACK OFF
@01-Script-01_create_tables.sql
@02-Script-00_populatePersons.sql
@02-Script-01_populatePlaces.sql
@02-Script-02_populateObjects.sql
@02-Script-03_populateApartment.sql
@02-Script-04_populateReserv.sql
@03-Script-00_dropAuxTables.sql
--SET FEEDBACK ON
prompt all scripts were executed. 
prompt showing errors
show errors;
exit;
