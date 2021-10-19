#!bin/bash

# adduser vsftpduserlocal
# список имен пользователей выводит | только нужного
# sleep 20
sed 's/:.*//' /etc/passwd | grep $USER_NAME
if [ 1 == $? ]; then
    mv /vsftpd.conf /etc/vsftpd.conf
    echo "add user"
    useradd -m -s /bin/bash $USER_NAME
    echo $USER_NAME:$USER_PASS | chpasswd
# создание папки и добавление ее пути в конфиг фтп-серв для локал пользователя для фтп-клиента
    mkdir -p /home/$USER_NAME/for_ftp_serv
    chown -R $USER_NAME:$USER_NAME /home/$USER_NAME/for_ftp_serv
    echo $USER_NAME >> /etc/vsftpd.userlist
    touch /local_root_dir.txt
    echo /home/$USER_NAME/for_ftp_serv >> /local_root_dir.txt
    sed -i '14d;14r /local_root_dir.txt' /etc/vsftpd.conf
    rm /local_root_dir.txt
# пустая папка для безопасности
    mkdir -p /var/run/vsftpd/empty
fi

sed 's/:.*//' /etc/passwd | grep $USER_NAME
if [ 0 == $? ]; then
    echo "yes user"
fi

vsftpd /etc/vsftpd.conf