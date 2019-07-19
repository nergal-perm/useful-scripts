#!/bin/bash

current_month=`date +%Y%m`
diary_note="$PERSONAL_WIKI/diary/$current_month $1.md"


if [ -f "$diary_note" ]; then
	vim "$diary_note"
else 
	touch "$diary_note"
	vim "$diary_note"
fi
