#!/bin/bash
echo "x=(c-b)/a"
function line {
echo $(( ($3 - $2)/$1 ))
}
if [ $# -eq 3 ]
then
value=$(line $1 $2 $3)
echo "The result is $value"
else
echo "Enter three digits"
fi
