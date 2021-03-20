#!/bin/bash

hash=$1
filePath=$2

if [ -z "$hash" ] && [ -z "$filePath" ]; then
	echo "Usage hashChecker.sh <hash> <pathToFile>"
else
	echo "$hash $filePath"| sha256sum --c
fi
