#!/bin/bash

ruby() {
  case $1 in
    for) echo "for num in {int}..{int} do ... end"
    ;;
    if | else | elsif) echo "if ... elsif ...else ... end"
    ;;
    case) echo "case {var} when {var} then ... else ... end"
    ;;
  esac
}