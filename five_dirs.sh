#!/bin/bash


mkdir -p five/{dir1,dir2,dir3,dir4,dir5}

count=1

for d in five/*; do
	echo $count >$d/file$count.txt
	count=$((count + 1))
done
