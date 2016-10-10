#!/bin/bash

if [ $# != 1 ]; then
	exit
fi

echo "Test binary: $1 ..."

dd if=$1 of=mem.bin bs=32 count=1 > /dev/null 2>&1
if [ -f mem.bin ]; then
	./compare.sh
else
	echo "fail to get files!"
fi
