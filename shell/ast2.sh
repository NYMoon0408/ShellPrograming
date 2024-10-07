#!/bin/bash
############
#     *
#    **
#   ***
#  ****
# *****
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

    for q in $(seq 1 $NUM)
    do
        echo -n "*"
    done
    echo

done

# for i in $(seq 1 $MAX)
# do
#     NUM=$i
#     BLANK_NUM=$(expr $MAX - $NUM)
    
#     # seq 4 -1 1 => 4에서 1만큼씩 빼서 1까지
#     INIT_NUM=$(expr $MAX - $i)
#     for j in $(seq $INIT_NUM -1 1)
#     do
#         echo -n " "
#     done

#     for q in $(seq $i)
#     do
#         echo -n "*"
#     done
#     echo

# done


