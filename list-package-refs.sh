#!/bin/bash
set -e

REPO_PATH=$1
PKG_PATH=$2
GOREFS="$(go env GOPATH)/bin/go-refs"

cd $REPO_PATH

echo "$(date '+%Y/%m/%d %H:%M:%S') Processing build imports of $REPO_PATH ..." >/dev/stderr

MATCHED_BUILD_FILES=$(go list -json ./... \
	| jq -r 'select((.GoFiles | length) > 0) | (.Dir + "/" + .GoFiles[])' \
	| xargs -I{} go list -json {} \
	| jq -r "select((.Imports | length) > 0) | select(.Imports[] == \"${PKG_PATH}\") | .Match[]")

echo "$MATCHED_BUILD_FILES" | xargs -I{} $GOREFS -printfile -pkg $PKG_PATH {}

echo "$(date '+%Y/%m/%d %H:%M:%S') Processing test imports of $REPO_PATH ..." >/dev/stderr

MATCHED_TEST_FILES=$(go list -json ./... \
	| jq -r 'select((.TestGoFiles | length) > 0) | (.Dir + "/" + .TestGoFiles[])' \
	| xargs -I{} go list -json {} \
	| jq -r "select((.TestImports | length) > 0) | select(.TestImports[] == \"${PKG_PATH}\") | .Match[]")

echo "$MATCHED_TEST_FILES" | xargs -I{} $GOREFS -printfile -pkg $PKG_PATH {}
