#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <derectory>"
    exit 1
fi

D_WORK="$1"       	# working directory(변할 수 있는 가능성이 있다면 변수로 정의하기)
T_FILE1=/tmp/.tmp1  	# tempory file1

SRC=".els"
DST=".txt"

ls -1 $D_WORK | grep "${SRC}$" > $T_FILE1   # '""'로 쓰면 구분이 힘듦 -> {}로 변수임을 표시
for FILE in `cat $T_FILE1`
do
    mv $D_WORK/$FILE $(echo $D_WORK/$FILE | sed "s/${SRC}$/${DST}/g")
done
