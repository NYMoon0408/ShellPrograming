#!/bin/bash

# Functions definitions
YES() {
    echo
    echo "YES" | boxes -d critical
}

NO() {
    echo 
    echo "NO" | boxes -d critical
}

FAIL() {
    echo "[ FAIL ] 잘못됨"
    exit 2
}

# Variable definitions


# Main Function
echo -n "선택(yes/no): "
read CHOICE

case $CHOICE in
    y|Y|yes|YES|Yes)    YES ;;
    n|N|no|NO|No)       NO  ;;
    *)                  FAIL;;
esac

