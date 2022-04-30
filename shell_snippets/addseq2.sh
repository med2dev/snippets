#!/usr/bin/env bash
# File: addseq2.sh
# The Unix Workbench: Bash Programming
# script 17

function addseq2 {
  local sum=0

  for element in $@; do
    let sum+=$element
  done

  echo $sum
}
