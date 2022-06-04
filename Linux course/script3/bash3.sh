#!/bin/bash

cat << EOF > file.txt
----------------Audit workstation------------------
Uptime: $(uptime | cut -f 5 -d " ")
----------------Current users:---------------------
$(who)
----------------Recent logins:---------------------
$(last -w)
--------TOP-10 processes by RAM/CPU usage:---------
$(top -b -o +%MEM | head -n 17)
----------------Open TCP/UDP ports:----------------
$(lsof -i -P -n)
----------------Virtual Memory usage:--------------
$(vmstat)
----------------Usage of disk space:---------------
$(free -h)
EOF
