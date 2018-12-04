-- Verify arch-schema:addDatabaseUser on mysql

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'User "test" does not exist')
  FROM mysql.user WHERE user = 'test';

ROLLBACK;
