#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <dir> <n>"
  exit 1
fi

dir=$1
n=$2

if [ ! -d $dir ]; then
  echo "Error: $dir is not a directory."
  exit 1
fi

cd $dir
find . -maxdepth 1 -type f -size +${n}c -delete

