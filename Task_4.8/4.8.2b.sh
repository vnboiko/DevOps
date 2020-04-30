#!/bin/bash
awk '{ gsub(/jamesbond/, "Boiko"); print }' ~/Desktop/Epam/4.8/4.8.1.txt > ~/Desktop/Epam/4.8/4.8.2b.txt
