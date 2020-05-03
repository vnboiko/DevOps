#!/bin/bash
str=path
echo "In variable \"$str\" character \"a\" situated on "`expr index "$str" a`" position."
