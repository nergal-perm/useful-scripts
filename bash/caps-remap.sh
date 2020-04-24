#! /bin/bash

ROOT_UID=0	# Only users with $UID 0 have root privileges
E_NOTCHANGED=66 # Could not change original file
E_NOTROOT=67	# Non-root exit error

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi

if grep -q "XKBOPTIONS=\".*ctrl:nocaps.*\"" /etc/default/keyboard 
then
	echo "Caps already remapped to Ctrl."
	exit 0
fi

sed --in-place=.bak -re 's/(XKBOPTIONS=".*)"$/\1,ctrl:nocaps"/gi' /etc/default/keyboard
if [ $? -ne 0 ] 
then
	exit $E_NOTCHANGED
fi 
	
if grep -q "XKBOPTIONS=\".*ctrl:nocaps.*\"" /etc/default/keyboard 
then
	echo "Successfully remapped Caps to Ctrl."
	exit 0
else
	echo "Something went wrong, restoring backup."
	mv /etc/default/keyboard.bak /etc/default/keyboard
	exit $E_NOTCHANGED
fi
