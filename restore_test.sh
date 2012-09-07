#!/bin/sh
# restore test files after lined.sh test

if [ ! -f "test1.bkp" ];
then
	/bin/echo "Backup file not found. Exiting."
	exit
else
	if [ -f test1 ];
		then
			rm test1
			cp test1.bkp test1
		else
			/bin/echo "test1 not found. exiting."
			exit 1;
	fi
	
	if [ -f test1.orig ];
		then
			rm test1.orig
	fi
	/bin/echo "####################"
	/bin/echo "# Success!!"
	/bin/echo "# test1 restored from bkp"
	/bin/echo "####################"
fi
