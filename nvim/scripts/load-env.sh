#!/bin/bash

# id no .env file in the callers current directory exit gracefully
if [ ! -f .env ]; then
  echo "No .env file found in the current directory"
  exit 0
fi

# set the -a flag to export all variables
set -a

# source the .env file
source .env

# unset the -a flag
set +a

# export all variables in the .env file
env
