#!/bin/bash
while :
do
read
var="$REPLY"
echo "Square:  = "$(($var*$var))""
done
