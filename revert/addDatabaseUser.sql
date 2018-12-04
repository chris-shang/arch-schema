-- Revert arch-schema:addDatabaseUser from mysql

BEGIN;

DROP USER 'test'@'localhost';

COMMIT;
