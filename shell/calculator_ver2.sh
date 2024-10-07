#!/bin/bash

Error() {
    echo "[ FAIL ]: 잘못된 $OP를 입력함"
    exit 2
}



echo -n "Enter A    : "
read A

echo -n "Operator   : "
read OP

echo -n "Enter B    : "
read B

case $OP in
    '+')    echo "$A + $B = $(expr $A + $B)"    ;;
    '-')    echo "$A - $B = $(expr $A - $B)"    ;;
    '*')    echo "$A * $B = $(expr $A \* $B)"   ;;      # escape 처리 필요
    '/')    echo "$A / $B = $(expr $A / $B)"    ;;
    *)      Error   ;;
esac
