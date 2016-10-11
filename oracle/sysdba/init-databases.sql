CREATE USER bonita IDENTIFIED BY bpm;
GRANT connect, resource TO bonita IDENTIFIED BY bpm;
GRANT select ON sys.dba_pending_transactions TO bonita;
GRANT select ON sys.pending_trans$ TO bonita;
GRANT select ON sys.dba_2pc_pending TO bonita;
GRANT execute ON sys.dbms_system TO bonita;
GRANT select ON sys.v$xatrans$ TO bonita;
GRANT execute ON sys.dbms_xa TO bonita;
GRANT FORCE ANY TRANSACTION TO bonita;
/
CREATE USER business_data IDENTIFIED BY bpm;
GRANT connect, resource TO business_data IDENTIFIED BY bpm;
GRANT select ON sys.dba_pending_transactions TO business_data;
GRANT select ON sys.pending_trans$ TO business_data;
GRANT select ON sys.dba_2pc_pending TO business_data;
GRANT execute ON sys.dbms_system TO business_data;
GRANT select ON sys.v$xatrans$ TO business_data;
GRANT execute ON sys.dbms_xa TO business_data;
GRANT FORCE ANY TRANSACTION TO business_data;
/