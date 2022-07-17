#!/bin/bash
#Сделайте скрипт, который будет спрашивать имя пользователя и на основе ввода показывать нужную строчку из /etc/passwd.
read -p "Print userrname: " user
cat /etc/passwd | grep $user
