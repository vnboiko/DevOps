#!/bin/bash
usr=`whoami`
mp=`ps -fu $usr | wc -l`
rp=`ps -fu root | wc -l`
echo -e "Processes of user: \n$usr \n$mp"
echo -e "Processes of user root:\n$rp"
