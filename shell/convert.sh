#!/bin/bash

INPUTFILE=/share/output.txt
OUTPUTFILE=/share/output.csv
> $OUTPUTFILE   # OUTPUTFILE에 매번 실행할 때마다 추가되는 형태면 안되니까

cat $INPUTFILE | while read ID NAME EMANIL PHONE ADDR
do
    # echo $(echo "$LINE") | sed 's/ /,/g'    # g: global(공백이 여러개면 여러개 모두 처리)
    echo "$ID,$NAME,$EMAIL,$PHONE,$ADDR" >> $OUTPUTFILE

done

cat $OUTPUTFILE


