#!/bin/bash
while :
do
if [ "$var1" == "0" ]
then
md5sum -c checksum.md5
var1="$?"
echo "var1= "$var1
sleep 5
else
#архивация проекта
tar -zcf /home/jamesbond/Desktop/Epam/4.12/4.12.2/arc_$(date +%d%m%y,%T).tgz /home/jamesbond/Desktop/Epam/4.12/4.12.2
#запустить перекомпиляцию проекта
make -f Makefile-2 clean
#запись контрольной суммы в файл
md5sum factorial.cpp functions.h hello.cpp main.cpp > checksum.md5
sleep 5 
#проверить не изменилась ли контрольная сумма
md5sum -c checksum.md5
#0-если не изменилась, 1-если иеменилась, записали значение в var1
var1="$?"
echo "var1= "$var1
fi
done
