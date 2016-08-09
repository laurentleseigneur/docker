CREATE USER bonita IDENTIFIED BY 'bpm';

CREATE USER business_data IDENTIFIED BY 'bpm';

CREATE DATABASE bonita DEFAULT CHARACTER SET utf8;

CREATE DATABASE business_data DEFAULT CHARACTER SET utf8;

GRANT ALL ON bonita.* to bonita;

GRANT ALL ON business_data.* to business_data;


