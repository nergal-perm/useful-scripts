#!/bin/bash

inotifywait -q -m -e close_write "$TODO_DIR" --format "%f" | while read f
do
	clear && $TODO_DIR/cli/todo.sh lsp b-c "@work\|@computer\|@internet"
done
