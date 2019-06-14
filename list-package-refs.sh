#!/bin/bash
REPO_PATH=$1
PKG_PATH=$2

cd $REPO_PATH
echo "$(date '+%Y/%m/%d %H:%M:%S') Processing $REPO_PATH ..." >/dev/stderr

MATCHED_FILES=$(go list -json ./... \
	| jq -r '(.Dir + "/" + .GoFiles[])' \
	| xargs -I{} go list -json {} \
	| jq -r "select((.Imports | length) > 0) | select(.Imports[] == \"${PKG_PATH}\") | .Match[]")

echo "$MATCHED_FILES" | xargs -I{} go-refs -printfile -pkg $PKG_PATH {}
