#!/bin/bash
echo "Закройте приложение Р7-офис, если оно открыто"
sleep 5
#убиваем все процессы r7-office
killall -ws 9 -u $USER editors_helper
#скачиваем и устанавливаем без сохранения на диске новую версию r7-office
dnf install https://download.r7-office.ru/centos/r7-office.rpm -y
