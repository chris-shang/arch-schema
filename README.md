# Welcome to cs arch!
Hi! This is the schema management repo for arch. To use the arch, you should config the sqitch and run the following sql.

## Init Files
    create database arch;
    use arch;
    CREATE USER '<username>'@'localhost' IDENTIFIED BY '<password>';
    GRANT ALL PRIVILEGES ON *.* TO '<username>'@'localhost';

## Installation

    brew tap theory/sqitch
    brew install sqitch
    brew install sqitch_mysql

## Global Configuration

    sqitch config --user user.name `whoami`
    sqitch config --user user.email `whoami`@com
    sqitch config --user engine.mysql.client `which mysql`

## Project Configuration

    sqitch config --user target.arch.uri db:mysql://<username>:<password>@localhost/arch

## Database Permissions

    GRANT ALL PRIVILEGES ON arch.* to '<username>'@'%' WITH GRANT OPTION;

## Migrations

### Create

    sqitch add <name> -n '<description>'

### Deploy

    sqitch deploy

### Verify

    sqitch verify

### Revert

    sqitch revert

