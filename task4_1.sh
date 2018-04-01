#!/bin/bash
echo " ---Hardware---"

echo "CPU:" 
	cat /proc/cpuinfo
echo "RAM:"
	cat /proc/meminfo
echo "Motherboard:"
	sudo dmidecode -t baseboard
echo "System Serial Number:"
	sudo dmidecode -t system | grep Serial
echo "---System---"

echo "OS Distribution:"
	cat /etc/issue
echo "Kernel version:"
	uname -a
echo "Installation:"
	dpkg -l
echo "Hostname:" $HOSTNAME

echo "Uptime:"
	uptime
echo "Processes running:" 
	top
