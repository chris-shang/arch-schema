-- Verify arch-schema:addUserTable on mysql

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'table "user" does not exists')
  FROM information_schema.tables
 WHERE table_schema = DATABASE()
   AND table_name = 'user';

ROLLBACK;
