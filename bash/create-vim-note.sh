#!/bin/bash

today=`date +%Y%m%d%H%M`
year=`date +%Y`
new_note="$PERSONAL_WIKI/$year/$today $1.md"
echo "Creating file $new_note"
touch "$new_note"
echo "---" >> "$new_note"
echo "id: $today" >> "$new_note"
echo "title: $1" >> "$new_note"
echo "tags: [\"\"]" >> "$new_note"
echo "private: false" >> "$new_note"
echo "---" >> "$new_note"
echo "" >> "$new_note"
echo "##" >> "$new_note"
