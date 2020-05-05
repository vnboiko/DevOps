#!/bin/bash
echo -n "Enter your text(quit for exit): "
var=0
while [ $var != quit ]
do
read
var="$REPLY"
echo "\"You printed: \" = "$var""
done
