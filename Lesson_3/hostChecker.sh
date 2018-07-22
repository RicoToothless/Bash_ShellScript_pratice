#!/bin/bash
#Description: Check lan host exists.
#Write by 350 (weilin.jang@gmail.com)
#Version: v1.00

echo "==== LAN HOST CHECKER ===="

for ip in 192.168.0.{1..20}
do	
	echo -n "pinging $ip... "
	ping -c 1 -i 0.2 -W 1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
		echo "ONLINE."
	else
		echo ""
	fi
done

echo "======== SCAN END ========"

exit 0
