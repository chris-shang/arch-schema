-- Deploy arch-schema:addDatabaseUser to mysql

BEGIN;

CREATE USER 'test'@'localhost' IDENTIFIED BY 'test';

COMMIT;
