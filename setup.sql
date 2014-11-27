CREATE DATABASE kippo;
GRANT ALL ON kippo.* TO 'kippo'@'172.16.0.0/255.240.0.0' IDENTIFIED BY 's0m3Secr3T!';
GRANT ALL ON kippo.* TO 'kippo'@'localhost' IDENTIFIED BY 's0m3Secr3T!';
FLUSH PRIVILEGES;
USE kippo;
SOURCE /opt/kippo/doc/sql/mysql.sql;
