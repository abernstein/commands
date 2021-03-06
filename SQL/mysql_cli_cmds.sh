# External Commands
# CONNECT TO DATABASE SERVER
mysql -h <HOST> -u <USERNAME> -p<PASSWORD>

# BACKUP/RESTORE DATABASE 
mysqldump -h <HOST> -u <USERNAME> -p<PASSWORD> <DATABASE> > <filename.sql.dump> or < <filename.sql.dump>

# Dump Schema w/o data
mysqldump -d -u <USERNAME> -p<PASSWORD> <DATABASE>

mysqladmin -h <HOST> -u <USERNAME> -p<PASSWORD> status

# Execute interal command from CLI
mysql -u$user -p$pass -S /tmp/mysql.sock -e "SELECT @@version"

# Internal Commands
SHOW STATUS;
SHOW PROCESSLIST;
SHOW STATUS LIKE '%onn%'
SHOW STATUS LIKE 'Conn%'

SHOW MASTER STATUS;
SHOW SLAVE STATUS;
SHOW SLAVE HOSTS;

SHOW GRANTS;
SHOW PRIVILEGES;

SHOW VARIABLES LIKE 'character_set%'
SHOW VARIABLES LIKE 'collation%'

SHOW CHARACTER SET;
SHOW COLLATION;

ALTER TABLE <table> CONVERT TO CHARACTER SET <charset> COLLATE <collation>;

# RETRIEVE INFORMATION ON SPECIFIC DB/TABLES
SET @TBL_NAME:='', @TBL_SCHEMA:='';
SELECT 
  TABLE_SCHEMA, TABLE_NAME, ENGINE, TABLE_COLLATION 
FROM TABLES 
WHERE TABLE_SCHEMA IN (@TBL_SCHEMA);

SELECT 
  update_time 
FROM information_schema.`TABLES` T 
WHERE TABLE_NAME=@TBL_NAME 
  AND TABLE_SCHEMA=@TBL_SCHEMA;

SELECT * 
FROM information_schema.`TABLES` 
WHERE TABLE_SCHEMA=@TBL_SCHEMA;

# LIST ALL USERS AND BASIC ACCESS INFORMATION
SELECT 
  DISTINCT user, user.host, db 
FROM mysql.user
  JOIN db USING (User) 
ORDER BY User DESC;


# SELECT and Put Output to Var or File 
SELECT ... INTO <var_list|OUTFILE|DUMPFILE>
