#!/usr/bin/env bash
# File commit_names.sh

################################################################################
# THIS FUNCTION IS ALSO IN THE git_helpers file. You have an alias to source   #
# git_helpers in your bash profile. It's git_helper                            #
################################################################################

function commit_names {
# output: the 7 digit names for the commits in your git repo
# to store these in an array, this usage:
# names=($(commit_names <path to git repo>))
  if [[ -z $1 ]]; then
    echo "commit_names needs one argument, a path to a git repo"
  elif [[ ! -d $1/.git ]]; then
    echo "$1 is not a git repo"
  else
    local commits=($(git -C $1 log --oneline | egrep -o ^\\S{7}\\s | egrep \\d))
  fi
  echo ${commits[@]}
}
