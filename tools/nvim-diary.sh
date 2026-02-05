#!/bin/bash

# Create the diary directory if it doesn't exist
DIARY_DIR="$HOME/.diary"
mkdir -p "$DIARY_DIR"

# Get current date parts
YEAR=$(date +'%Y')
MONTH=$(date +'%m')
DAY=$(date +'%d')

# Get seconds since epoch
SECONDS=$(date +'%s')

# Create the directory for the new note
NOTE_DIR="$DIARY_DIR/$YEAR/$MONTH/$DAY"
mkdir -p "$NOTE_DIR"

# Create the file path
NOTE_FILE="$NOTE_DIR/notes-${SECONDS}.md"

# Determine the editor
if [ -n "$EDITOR" ]; then
    EDITOR_CMD="$EDITOR"
elif command -v nvim >/dev/null 2>&1; then
    EDITOR_CMD="nvim"
else
    EDITOR_CMD="vim"
fi

# Open the file with the editor
"$EDITOR_CMD" "$NOTE_FILE"
