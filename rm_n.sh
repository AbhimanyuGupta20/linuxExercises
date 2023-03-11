#!/bin/bash

if [[ $# -le 1 || $# -ge 3 ]]
then
	echo "usage: $0  <dir> <n>" 1>&2
	echo "removes all files in directory <dir> larger than <n> bytes." 1>&2
	exit 0
else
	find */$1/* -type f -size +$2c -delete
fi

