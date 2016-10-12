#!/bin/sh

echo "creating xa view locate : $ORACLE_HOME/rdbms/admin/xaview.sql"
sqlplus sys/oracle as sysdba @"$ORACLE_HOME/rdbms/admin/xaview.sql"

echo "creating database users with xa required grants"
sqlplus sys/oracle as sysdba @"/docker-entrypoint-initdb.d/sysdba/init-databases.sql"

echo "end of customization."
