#!/bin/bash
#Description: Use the loop (while) to simulate "nl" command.
#Write by 350 (weilin.jang@gmail.com)
#Version: v1.00

read -p "Please enter File-Name:" varFileName


noLine=1

if [ -e $varFileName ]
then
while read txtLine
do
	echo -e "\t $noLine $txtLine"
		let noLine=$noLine+1
done < $varFileName

else
	echo "$varFileName doesn't exsist"
fi

exit 0
