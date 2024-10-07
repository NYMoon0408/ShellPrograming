#!/bin/bash

BASEDIR=/test
[ -d $BASEDIR ] && rm -rf $BASEDIR/*    # /test가 이미 존재하면 안의 내용을 지우도록

for i in $(seq 1 4)
do
    # echo $i
    mkdir -p $BASEDIR/$i
    for j in $(seq 1 4)
    do
        mkdir -p $BASEDIR/$i/$j
    done
done
