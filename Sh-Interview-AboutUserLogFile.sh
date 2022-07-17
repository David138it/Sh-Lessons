#!/bin/bash
#Напишите сценарий, который выводит дату, время, список зарегистрировавшихся пользователей, и uptime системы и сохраняет эту информацию в системном журнале.
#echo "выводит число секунд прошедших с начала эпохи unix:"
#date '+%s'
#echo "выводит локальное время:"
#date '+%F %T'
#echo "список зарегистрировавшихся обычных пользователей, которые создаются с UID от UID_MIN до UID_MAX которые определены в файле /etc/login.defs:"
#awk '/^UID/{print $1"="$2}' /etc/login.defs
#echo "из файла /etc/passwd выбрать только тех пользователей у которых UID (третий столбик :) из этого диапазона:"
#eval $(awk '/^UID/{print $1"="$2}' /etc/login.defs)
#awk -v min=$UID_MIN -v max=$UID_MAX -F: '$3>=min && $3<=max {print $1}' /etc/passwd
#echo "uptime системы:"
#uptime -p
echo -e "Дата и Время:;$(date '+%F %T')\nПользователи:;$(eval $(awk '/^UID/{print $1"="$2}' /etc/login.defs) && awk -v min=$UID_MIN -v max=$UID_MAX -F: '$3>=min && $3<=max {print $1}' /etc/passwd)\nВремя работы (начало):;$(uptime -s)\nВремя работы (прошло):;$(uptime -p)" | column -t -s ";" | systemd-cat --identifier="задача3"
