#!/bin/bash
vmstat 3 10
uptime | awk '{ print "Load average: "$9 }'
free -h
df -h
