#!/bin/bash
cat users.txt | while read LINE
do
GEN=$(openssl rand -base64 8)
PASS=$(mkpasswd -m md5 $GEN)
echo "$LINE $GEN" > $LINE"-login-password".txt
useradd -g user -s /bin/bash -d /home/$LINE -m $LINE -p $PASS
done
