#!/bin/bash

#random_note=`find #PERSONAL_WIKI -type f -iname "*.md" | sort -R | head -1`
random_note=`find $PERSONAL_WIKI -type f -regextype egrep ! -regex ".*/20[0-9]{10}.*\.md" | sort -R | head -1`
(cd $PERSONAL_WIKI && vim "${random_note}")
