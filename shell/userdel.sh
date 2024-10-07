#!/bin/bash

USERLIST=/root/shell/user.list

cat $USERLIST | while read UNAME UPASS
do
    userdel -r  $UNAME
    [ $? -eq 0 ] \
    && echo "[ OK ]: $UNAME user delete complete" \
    || echo "[ FAIL ]: $UNAME user delete error"
done

