# Inseption
Docker/Docker Compose.

Проект по системному администрированию.

В проекте настроена инфраструктура из служб:
  - adminer
  - mariadb
  - mysite
  - nginx
  - redis
  - vsftpd
  - wordpress
 
 А также создан статический сайт.
 
 Чтобы ознакомиться с сайтом, необходимо запустить проект.
 Статический сайт написан на HTML/CSS.
 Когда проект будет запущен (см.п.4), используя 443 порт (или https) в адресную строку в браузере введите (см.п.4):
  https://localhost:443/resume/
                              либо
  https://mdulcie.42.fr:443/resume/
  
!!! Важно /resume/ именно так ввести (т.е. с косой чертой в конце - это жестко прописано в конфигурации службы nginx).

Или просто открыть используя браузер Inception/Project_for_VirtBox/srcs/requirements/mysite/resume.html для ознакомления со статическим сайтом.

Для каждой службы написан собственный Dockerfile, с помощью которого я создаю образ (без использования чужих готовых образов, в том числе без использования сервиса DockerHub (Alpine / Debian исключены из этого правила).).

____________________________________________
Запустить проект можно следующими способами:
1. Запуск на виртуальной машине (по  subject).
    
    Можно также использовать и без виртуальной машины на Ubuntu см.п.3.1.
    
    При запуске Makefile использует команду с sudo, необходимо будет ввести пароль.
    
2. Запуск без виртуальной машины.

____________________________________________
Подготовка к старту проекта.

1. Скачать репозиторий Inception.

2. Зайти в папку, из которой выбран запуск проекта.

  3.1. Запуск на виртуальной машине. В папке есть инструкция readme.

    Project for Ubuntu_22.04.1 LTS (on VM).
    You need to edit the file /etc/hosts, replace localhost to mdulcie.42.fr
    
  Исполнение данной инструкции необходимо для того, чтобы в браузере можно было ввести в адресную строку mdulcie.42.fr.
  Также можно все это проделать и без установки виртуальной машины, просто не забудьте поменять в файле /etc/hosts, обратно на localhost текст mdulcie.42.fr
    
  3.2. Запуск без виртуальной машины.В папке есть инструкция readme.

____________________________________________
Старт.

4. make -f путь_до_нужного_мэйкфайла
  Когда проект запущен, все службы заработали, в браузере в адресной строке необходимо ввести:
            https://localhost:443     
            https://mdulcie.42.fr:443     
            
            Соответственно для просмотра статического сайта:
              https://localhost:443/resume/
                              либо
              https://mdulcie.42.fr:443/resume/
              
  Приятного просмотра и хорошего дня!!!
