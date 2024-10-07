#!/bin/bash
############
# ----*
# ---***
# --*****
# -*******
# *********
############

MAX=5

for i in $(seq 1 $MAX)
do
    NUM=$i
    BLANK_NUM=$(expr $MAX - $NUM)
    # echo "$BLANK_NUM : $NUM"
    for j in $(seq 1 $BLANK_NUM)
    do
        echo -n " "
    done

    STAR_NUM=$(expr 2 \* $NUM - 1)
    for k in $(seq 1 $STAR_NUM)
    do
        echo -n "*"
    done
    echo

done
