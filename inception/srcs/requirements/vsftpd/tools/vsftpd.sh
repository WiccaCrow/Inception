#!bin/bash

# adduser vsftpduserlocal
# список имен пользователей выводит | только нужного

# sleep 20
sed 's/:.*//' /etc/passwd | grep vsftpduserlocal
if [ 1 == $? ]; then
    echo "add user" && useradd -m -s /bin/bash vsftpduserlocal && echo "vsftpduserlocal:vsftpduserlocal" | chpasswd
fi

sed 's/:.*//' /etc/passwd | grep vsftpduserlocal
if [ 0 == $? ]; then
    echo "yes user"
fi

# service vsftpd start