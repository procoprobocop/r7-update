#!/bin/bash
echo "Закройте приложение Р7-офис, если оно открыто"
sleep 5
#убиваем все процессы r7-office
killall -ws 9 -u $USER editors_helper
#скачиваем и устанавливаем без сохранения на диске новую версию r7-office
dnf install https://download.r7-office.ru/centos/r7-office.rpm -y
#добавляем скрипт в планировщик задач, где он будет выполняться каждое 1 число месяца
crontab -l > crontab_new
echo "0 0 1 * * root /usr/share/r7-update.sh" >> crontab_new
crontab crontab_new
rm crontab_new
