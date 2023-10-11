#!/bin/bash

# Check if the user has provided a directory
if [ "$#" -ne 1 ]; then
    echo "Usage: rename_files /path/to/your/directory"
    exit 1
fi

DIRECTORY="$1"

# Navigate to the specified directory
cd "$DIRECTORY" || { echo "Directory not found!"; exit 1; }


for oldname in *; do
    # Convert the filename to lowercase, replace spaces and hyphens with underscores
    tempname=$(echo "$oldname" | tr '[:upper:]' '[:lower:]' | tr ' -' '__')

    # Remove special characters (keeping alphanumeric, underscores, and periods)
    newname=$(echo "$tempname" | sed 's/[^a-z0-9_.]//g' | sed 's/__\+/_/g')

    # Rename the file if the new name is different
    if [ "$oldname" != "$newname" ]; then
        mv "$oldname" "$newname"
    fi
done
