DROP VIEW v$xatrans$;
DROP VIEW v$pending_xatrans$;

/

CREATE VIEW v$pending_xatrans$ AS
(SELECT global_tran_fmt, global_foreign_id, branch_id
   FROM   sys.pending_trans$ tran, sys.pending_sessions$ sess
   WHERE  tran.local_tran_id = sess.local_tran_id
     AND    tran.state != 'collecting'
     AND    BITAND(TO_NUMBER(tran.session_vector),
                   POWER(2, (sess.session_id - 1))) = sess.session_id)
/



CREATE VIEW v$xatrans$ AS
(((SELECT k2gtifmt, k2gtitid_ext, k2gtibid
   FROM x$k2gte2
   WHERE  k2gterct=k2gtdpct)
 MINUS
  SELECT global_tran_fmt, global_foreign_id, branch_id
   FROM   v$pending_xatrans$)
UNION
 SELECT global_tran_fmt, global_foreign_id, branch_id
   FROM   v$pending_xatrans$)
/


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