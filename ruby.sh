#!/bin/bash

ruby() {
  case $1 in
    for) echo "for num in {int}..{int} do ... end"
    ;;
    if) echo "if ... elsif ...else ... end"
    ;;
  esac
}