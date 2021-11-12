#!/bin/bash

hosts='/home/adrian/real_life_bash_scripts/server_connectivity/server_list.txt'


for host in `cat $hosts`

do
	ping -c 1 $host &> /dev/null
	if [ $? -eq 0 ]
	then
	echo $host is OK
	else
	echo $host is not OK
	fi
done
