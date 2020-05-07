#!/bin/bash
f=`find $HOME -maxdepth 1 -type f | wc -l`
hf=`find $HOME -maxdepth 1 -type f -name ".*" | wc -l`
echo -e "User home directory:"
echo $HOME
echo -e "Contains files:\n" $f
echo -e "Contains hidden files:\n" $hf
