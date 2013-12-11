# External Commands
mysql -h <host> -u <username> -p<password>

mysqldump -h <host> -u <username> -p<password> <database> > <filename.sql.dump> or < <filename.sql.dump>

# Dump Schema w/o data
mysqldump -d -u someuser -p mydatabase

mysqladmin -h <host> -u <username> -p<password> status

# Execute interal command from CLI
mysql -u$user -p$pass -S /tmp/mysql.sock -e "SELECT @@version"

# Internal Commands
SHOW STATUS;
SHOW PROCESSLIST;
SHOW STATUS LIKE '%onn%'
SHOW STATUS LIKE 'Conn%'
SHOW VARIABLES LIKE 'character_set%'
SHOW VARIABLES LIKE 'collation%'

SHOW MASTER STATUS;
SHOW SLAVE STATUS;
SHOW SLAVE HOSTS;

SHOW CHARACTER SET;
SHOW COLLATION;
SHOW GRANTS;
SHOW PRIVILEGES;


ALTER TABLE <table> CONVERT TO CHARACTER SET <charset> COLLATE <collation>;

# use information_schema;
SELECT TABLE_SCHEMA, TABLE_NAME, ENGINE, TABLE_COLLATION FROM TABLES WHERE TABLE_SCHEMA IN (<SCHEMA NAME>);

