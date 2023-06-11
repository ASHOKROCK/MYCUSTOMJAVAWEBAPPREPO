#!/bin/bash -x
set -x
echo ""
echo "Hello ${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"
w

set +x
