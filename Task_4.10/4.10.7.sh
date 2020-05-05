#!/bin/bash
cat /etc/passwd | awk 'FS=":" {print $1,$3}' | sort > temp.txt
while :
do
grep -vFf list.txt temp.txt > list.txt
sleep 60
echo "List is update!"
done
