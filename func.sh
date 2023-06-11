#!/bin/bash

die(){
  local error=${1:-Undefined error}
  echo "$0: $LINE $error" 
}
# call die() with an argument 
die "File not found"


# call die() without an argument 
die
