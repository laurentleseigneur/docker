
CREATE ROLE bonita LOGIN PASSWORD 'bpm';

CREATE DATABASE bonita
  WITH OWNER = bonita
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       CONNECTION LIMIT = -1;

GRANT CONNECT, TEMPORARY ON DATABASE bonita TO public;

GRANT ALL ON DATABASE bonita TO bonita;


CREATE ROLE bizdata LOGIN PASSWORD 'bpm';

CREATE DATABASE bizdata
  WITH OWNER = bizdata
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       CONNECTION LIMIT = -1;

GRANT CONNECT, TEMPORARY ON DATABASE bizdata TO public;

GRANT ALL ON DATABASE bizdata TO bizdata;