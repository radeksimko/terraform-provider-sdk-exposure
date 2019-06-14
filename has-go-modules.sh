#!/bin/bash
REPO_PATH=$1

cd $REPO_PATH

if [ -f ./go.mod ]; then
	echo "$REPO_PATH - OK"
else
	echo "$REPO_PATH - NO-MODULES!!!"
fi
