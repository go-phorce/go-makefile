#!/bin/bash
# this script creates PROJ_GOPATH folder for the project in GOPATH

ROOT=`pwd`
GOROOT=`go env GOROOT`
echo "Working in $ROOT"

# include parse_yaml function
source .project/yaml.sh
create_variables ./config.yml

ORG_NAME=$project_org
PROJ_NAME=$project_name
REPO_NAME=$ORG_NAME/$PROJ_NAME
export PROJ_GOPATH=/tmp/gopath/$PROJ_NAME

make gopath
code "$PROJ_GOPATH/src/$REPO_NAME" & make devtools
