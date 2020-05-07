#!/bin/bash
ps -eo pid,user,time,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
