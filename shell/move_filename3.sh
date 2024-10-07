#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <derectory> <src extension> <dst extension>"
    exit 1
fi

D_WORK="$1"       	# working directory(변할 수 있는 가능성이 있다면 변수로 정의하기)
SRC=".$2"
DST=".$3"

T_FILE1=/tmp/.tmp1  	# tempory file1

find $D_WORK | grep "${SRC}$" > $T_FILE1   # '""'로 쓰면 구분이 힘듦 -> {}로 변수임을 표시
for FILE in `cat $T_FILE1`
do
    mv $FILE $(echo $FILE | sed "s/${SRC}$/${DST}/g")
done
