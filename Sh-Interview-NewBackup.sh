#/bin/bash
#Разрешите пользователю helpdesk1 запускать команду Sh-Interview-NewBackup от имени пользователя backup. Команда Sh-Interview-NewBackup должна создавать сжатый архив директории /data и сохранять его в домашней директории пользователя backup с датой в названии.
#dt=$(date)
#echo "$dt"
#echo "$(date)"
#for line in $(date)
#do
#    echo "$line"
#done
#touch testfile5$(date +%y%m%d)
sudo tar -cjvf /home/backup1/testArchive$(date +%d%m%y).tar.gz /data/