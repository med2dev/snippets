#!/usr/bin/env bash
# File: addseq.sh
# The Unix Workbench: Bash Programming
# script 16

echo "This is the \$0 value: $0"

function addseq {
  sum=0

  for element in $@; do
    let sum+=$element
  done

  echo $sum
}
