#!/bin/bash

today=`date +%Y%m%d%H%M`
new_note="$PERSONAL_WIKI/$today $1.md"
echo "Creating file $1"
touch "$new_note"
echo "---" >> "$new_note"
echo "id: $today" >> "$new_note"
echo "title: $1" >> "$new_note"
echo "tags: [\"\"]" >> "$new_note"
echo "private: false" >> "$new_note"
echo "---" >> "$new_note"
echo "" >> "$new_note"
echo "##" >> "$new_note"
