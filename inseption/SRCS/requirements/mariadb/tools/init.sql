CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER '$DB_USER_ADMIN'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL ON $DB_NAME.* TO '$DB_USER_ADMIN'@'%' IDENTIFIED BY '$DB_PASSWORD';
UPDATE mysql.user SET plugin='mysql_native_password' WHERE User = 'root' AND Host = 'localhost';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';
FLUSH PRIVILEGES;