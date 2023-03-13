#!/bin/bash

# source ./ruby.sh
# source ./javascript.sh

# case $1 in
#   ruby) ruby $2
#   ;;
#   javascript) javascript $2
#   ;;
# esac

syntax=$(cat syntax.json | jq ".ruby" | jq ".if")
echo $syntax