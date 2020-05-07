#!/bin/bash
set -r
echo -e "Enter the text which you need to find\n" 
read text
echo -e "Enter the file to be searched\n" 
read ffile
echo -e "Enter the number of lines which you want to displayed\n" 
read lines
grep  -n -w -i "$text" $ffile | cat -n | head -n $lines

