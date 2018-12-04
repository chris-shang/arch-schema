-- Deploy arch-schema:addUserTable to mysql

BEGIN;

CREATE TABLE user (
    user_id bigint not null auto_increment,
    user_name varchar(128) not null,
    email varchar(128),
    handle varchar(20) not null,
    salt varchar(32) not null,
    encrypted_password varchar(128) not null,
    primary key (user_id),
    unique key (handle));

COMMIT;
