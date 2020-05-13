#!/bin/bash
while :
do
if [ "$var1" == "0" ]
then
sleep 5
md5sum -c /home/jamesbond/Desktop/Epam/4.12/checksum.md5
var1="$?"
md5sum * */* 2>/dev/null > /home/jamesbond/Desktop/Epam/4.12/checksum.md5
echo "var1= "$var1
else
#архивация проекта
tar -zcf /home/jamesbond/Desktop/Epam/4.12/arc/arc_$(date +%d%m%y,%T).tgz /home/jamesbond/Desktop/Epam/4.12/4.12.2
#запустить перекомпиляцию проекта
make -f Makefile-2 clean
#вычисление контрольных сумм проекта и запись в файл
md5sum * */* 2>/dev/null > /home/jamesbond/Desktop/Epam/4.12/checksum.md5
sleep 5 
#проверить не изменились ли контрольные суммы
md5sum -c /home/jamesbond/Desktop/Epam/4.12/checksum.md5
#0-если не изменились, 1-если иеменились, записали значение в var1
var1="$?"
echo "var1= "$var1
fi
done
