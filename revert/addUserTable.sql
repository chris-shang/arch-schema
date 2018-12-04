-- Revert arch-schema:addUserTable from mysql

BEGIN;

DROP Table user;

COMMIT;
