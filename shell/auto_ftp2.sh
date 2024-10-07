#!/bin/bash

SERVERLIST=/root/shell/server.txt

for i in $(cat $SERVERLIST)
do 
    ftp -n "$i" << EOF
    user root centos
    cd /tmp
    lcd /test
    bin
    hash
    prompt
    mput linux207.txt
    quit
EOF
done

