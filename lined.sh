#!/bin/sh

# lined.sh
# v. 1.0.3
#
# A small utility to delete specified lines from a text file1
# as defined by a list of lines to be deleted in text file 2.
# Lines are deleted from the bottom up.
#
# Sable Cantus, Rio Hondo College
# Updated: 2012-08-30 -- Changed bkp, added text notifcations

# check that the first input file has been specified
if [ "$1" != "" ]
	then
		# make sure the second input file has been specified
		if [ "$2" != "" ]
			then
				# backup original files
				echo "backing up files"
				mkdir bkp
				cp $1 bkp/$1.bkp
				cp $1 $1.orig
				cp $2 bkp/$2.bkp
				
				# convert CRLF to LF
				# orig files always contain CRLF
				
				#echo "converting line endings"
				#sed 's/^M$//' $1 > $1.lf
				#sed 's/^M$//' $2 > $2.lf
				
				echo "running the delete process"
				# run the loop
				for i in `sort -nr $2`
				do
				sed ''$i'd' $1 > $1.temp
				mv $1.temp $1
				done	
				
				# output results of line delete
				echo "Success!!!"
				echo ""
				echo "The updates have been made to $1."
				wc -l $1
				echo ""
				echo "Your original data file has been moved to  $1.orig."
				wc -l $1.orig
				echo ""
				echo "The difference is:"
				diff --suppress-common-lines -y $1 $1.orig | wc -l
			else
				echo "Usage: " $0 " file1 file2"
				echo "file1 is the data file"
				echo "file2 is the file listing lines to be deleted"
				exit 1;
			fi
	else
		echo "Usage: " $0 " file1 file2"
		echo "file1 is the data file"
		echo "file2 is the file listing lines to be deleted"
		exit 1;	
fi
exit
