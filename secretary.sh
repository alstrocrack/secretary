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
  *)
    echo $error
    exit 1
    ;;
esac

echo $(cat syntax.json | jq ".$language" | jq ".$syntax")
