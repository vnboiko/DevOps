#!/bin/bash
total=$(echo "(($1+$2)/$3)" |bc -l -q)
echo $1" + "$2
echo "----- = " $total
echo "  "$3

