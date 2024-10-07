#!/bin/bash

	# (출력화면)
	# 50% |=====>

NUM=1

for i in $(seq 1 10)
do
    PERCENT=$(expr $i \* 10)
    echo -ne "$PERCENT% |"
    
    for j in $(seq $i)
    do
        echo -ne "="
    done

    [ $i -eq 10 ] && echo "| complete"

    echo -ne '\r'
    sleep 1
done


