#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ]; then
	echo "ERROR: Path and Dir required"
	exit 1
fi

filesdir="$1"
searchdir="$2"
if [ ! -d "$filesdir" ]; then
	echo "ERROR: '$filesdir' not a dir"
	exit 1
fi
num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -ri "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
exit 0
