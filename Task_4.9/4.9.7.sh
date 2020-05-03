#!/bin/bash
if [ "$#" -ne "2" ]
then
echo "Error! Enter only two digits."
elif [ "$1" -ge "$2" ]
then
echo "First digit biggest then second."
else
echo "Second digit biggest then first."
fi
