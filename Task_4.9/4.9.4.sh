#!/bin/bash
cd $HOME &&  ls -R -l >~/Desktop/Epam/4.9/4.9.4.txt
var1=$(grep -c "total" ~/Desktop/Epam/4.9/4.9.4.txt)
echo "В моем домашнем каталоге "$var1" поддиректорий: "$HOME
