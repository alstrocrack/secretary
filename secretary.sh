#!/bin/bash


# getopts
syntax=$(cat syntax.json | jq ".$1" | jq ".$2")
echo $syntax