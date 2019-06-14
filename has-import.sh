#!/bin/bash
REPO_PATH=$1
IMPORT_PATH=$2

cd $REPO_PATH

ALL_IMPORTS=$(go list -json ./... | jq ". | select((.Imports | length) > 0)")
COUNT_IMPORTS=$(echo $ALL_IMPORTS | jq -r ". | select(.Imports[] == \"${IMPORT_PATH}\") | .ImportPath" | wc -l | awk '{print $1}')

if [ $COUNT_IMPORTS -gt 0 ]; then
	echo $REPO_PATH
fi
