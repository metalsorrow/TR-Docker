chmod 777 -R /home/oracle/datafile/
cd /docker-entrypoint-initdb.d/folder/
set define off

sqlplus system/oracle < 00-Script-Create-user-default.sql
sqlplus turismo/turismo < 00-install.sql
