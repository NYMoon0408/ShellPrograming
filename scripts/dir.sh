#!/bin/bash

echo -n "파일 이름 입력? :   "
read FILE1

# echo $FILE1
if [ -f $FILE1 ]; then
    echo "[ OK ] $FILE1: 일반 파일입니다."
elif [ -d $FILE1 ]; then
    echo "[ OK ] $FILE1: 디렉토리 파일입니다."
else
    echo "[ FAIL ] $FILE1: 일반 파일 또는 디렉토리 파일이 아닙니다."
    exit 2
fi
