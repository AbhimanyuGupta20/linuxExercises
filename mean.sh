#!/bin/bash

if [ $# -lt 1 ]; then
    echo "usage: ./mean.sh <column> [file.csv]" >&2
    exit 1
fi

column=$(( $1 + 1 ))

if [ $# -eq 2 ]; then
    file=$2
else
    file="/dev/stdin"
fi

mean=$(cut -d',' -f$column "$file" | tail -n+2 | {
    sum=0
    count=0
    while read value; do
        sum=$(echo "$sum+$value" | bc)
        count=$((count+1))
    done
    echo "scale=2;$sum/$count" | bc
})

echo "column: $((column-1)) Mean: $mean"
