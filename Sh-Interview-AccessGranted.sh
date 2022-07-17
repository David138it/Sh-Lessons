#!/bin/bash
#Сделайте скрипт, который спросит имя, а потом фамилию. Если результат будет «John Doe», то скрпит должен напечатать «Access Granted».
read -p "Print name: " name
read -p "Print surname: " surname
name1=$(echo "$name $surname")
name2="John Doe"
if [ "$name1" = "$name2" ]
then
	echo "Access Granted"
fi
