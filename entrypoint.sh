#!/bin/sh
# Using this script because github action passess the arguments as strings
# instead of array
echo ">>> Running sls deploy $@"
echo ">>> Running sls deploy $0 "
echo ">>> Running sls deploy $1 "
#sls deploy $@
echo ">>> Compleated"
