#!/bin/bash

random_note=`find $PERSONAL_WIKI -type f | sort -R | head -1`
(cd $PERSONAL_WIKI && vim "${random_note}")
