#!/bin/bash
REPO_PATH=$1

cd $REPO_PATH

ALL_IMPORTS=$(go list -json ./... | jq ". | select((.Imports | length) > 0)")

echo $ALL_IMPORTS | jq -r ".Imports[] | select(startswith(\"github.com/hashicorp/terraform\"))" | xargs -I_ echo "_,$REPO_PATH"
