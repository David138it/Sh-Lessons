#!/bin/bash
#Определить, что является файлом, а что папкой в заданном каталоге
dir=/home/ik/*
for file in $dir
do
if [ -d "$file" ]
then
echo "$file - директория"
elif [ -f "$file" ]
then
echo "$file - файл"
else
echo "Неизвестный файл"
fi
done