#!/bin/bash

error="Enter valid option"

# language option
case $1 in
  -r | --ruby)
    language=ruby
    ;;
  -j | --javascript)
    language=javascript
    ;;
  *)
    echo $error
    exit 1
    ;;
esac

# syntax to search
case $2 in
  if | else | elsif)
    syntax=if
    ;;
  case | switch | when | default)
    syntax=case
    ;;
  *)
    echo $error
    exit 1
    ;;
esac

# Get absolute path to syntax.json
absolute_path=$(cd $(dirname ${0}) && pwd)
# Get the corresponding syntax
syntax=$(cat $absolute_path/syntax.json | jq ".$language" | jq ".$syntax")
# Displayed without "
echo ${syntax//\"/''}
