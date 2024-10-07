#!/bin/bash

# Variable definition
NUM=1
BASEDIR=$HOME/scripts/project1
TOTAL_NUM=$(wc -l < $BASEDIR/question/answer.txt)
TMP1=/tmp/tmp1

# Function definition
ProbView() {
    cat $1
    echo

}

# Main Function
# $NUM: 문제 번호
# $PROB_FILE: 문제 파일
# $CORRECT_NUM: 정답 번호

ls -1 $BASEDIR/question/question*.txt > $TMP1
while [ $NUM -le $TOTAL_NUM ]       # 현재 NUM이 TOTAL_NUM보다 작거나 같을때까지만 실행
do
    PROB_FILE=$BASEDIR/question/question$NUM.txt
    ProbView $PROB_FILE
    CORRECT_NUM=$(cat $BASEDIR/question/answer.txt \
                        | sed -n "${NUM}p" \
                        | awk -F : '{print $2}') 
    # echo $CORRECT_NUM

    echo -n "정답은?(1|2|3|4): "
    read ANSWER
    
    if [ "$ANSWER" = "$CORRECT_NUM" ]; then
        echo "[ OK ]: 정답!"
        NUM=$(expr $NUM + 1)    # 정답이 맞으면 다음 문제로 넘어가기 위해 NUM+1
    else
        echo "[ FAIL ]: 땡! 다시 해보세요!"
    fi
    echo
done

echo "합격!" | boxes -d santa
