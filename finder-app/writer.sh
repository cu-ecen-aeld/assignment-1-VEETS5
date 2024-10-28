#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: Both file path and string are required."
    exit 1
fi
writefile="$1"
writestr="$2"
mkdir -p "$(dirname "$writefile")"
if echo "$writestr" > "$writefile"; then
    # Success
    exit 0  # Explicitly exit with 0 for success
else
    echo "Error: Could not write to file '$writefile'."
    exit 1
fi


