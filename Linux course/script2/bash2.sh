#!/bin/bash

cat << EOF > file.txt
Operation system:
	$(uname -a)
Network interfaces:
	$(ifconfig -a)
IP address:
	$(ip addr show)
Firewall status:
	$(ufw status verbose)
Nameserver:
	$(cat /etc/resolv.conf)
EOF
