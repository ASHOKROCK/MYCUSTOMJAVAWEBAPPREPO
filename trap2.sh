#!/bin/bash
# define var
file="/tmp/data"
# create function
die(){
  echo "$@" 
  exit 2
}

# ... call die if needed
[ ! -f $file ] && die "$0: File $file not found." || echo "$0: File $file found."
