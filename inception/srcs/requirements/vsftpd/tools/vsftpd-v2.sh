#!bin/bash

mkdir /etc/vsftpd
touch /etc/vsftpd/vsftpdusers
chmod 0600 /etc/vsftpd/vsftpdusers

echo "ftpuser" >> /etc/vsftpd/vsftpdusers
echo "123" >> /etc/vsftpd/vsftpdusers

db5.3_load -T -t hash -f /etc/vsftpd/vsftpdusers /etc/vsftpd/users.db
chmod 0600 /etc/vsftpd/users.db

touch /etc/pam.d/vsftpd.virtual
chmod 0600 /etc/pam.d/vsftpd.virtual
echo "auth       required     pam_userdb.so db=/etc/vsftpd/users" >> /etc/pam.d/vsftpd.virtual
echo "account    required     pam_userdb.so db=/etc/vsftpd/users" >> /etc/pam.d/vsftpd.virtual
echo "session    required     pam_loginuid.so" >> /etc/pam.d/vsftpd.virtual

/etc/init.d/vsftpd restart
