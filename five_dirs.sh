#!/bin/bash


mkdir -p five/{dir1,dir2,dir3,dir4,dir5}

count=1

for d in five/*; do
	for ((i=1; i<=4; i++)) do
		for ((j=1; j<=$i; j++)) do
			echo $i >>$d/file$i.txt
		done
	done
	count=$((count + 1))
done
