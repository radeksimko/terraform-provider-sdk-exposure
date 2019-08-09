#!/bin/bash
REPO_PATH=$1

cd $REPO_PATH

ALL_IMPORTS=$(go list -json ./... | jq ". | select((.Imports | length) > 0 or (.TestImports | length) > 0)")

echo $ALL_IMPORTS | jq -r ". | select((.Imports | length) > 0) | .Imports[] | select(startswith(\"github.com/hashicorp/terraform\"))" | xargs -I_ echo "_,$REPO_PATH"
echo $ALL_IMPORTS | jq -r ". | select((.TestImports | length) > 0) | .TestImports[] | select(startswith(\"github.com/hashicorp/terraform\"))" | xargs -I_ echo "_,$REPO_PATH"
