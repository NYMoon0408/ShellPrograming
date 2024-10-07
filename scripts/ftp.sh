#!/bin/bash

# Functoin definitions
Help() {
    cat << EOF
    Commands may be abbreviated.  Commands are:

!		debug		mdir		sendport	site
$		dir		mget		put		size
account		disconnect	mkdir		pwd		status
EOF
}

Open() {
    echo -n "접속하려고 하는 FTP 서버 IP: "
    read IP1
    # echo $IP1
    ftp $IP1
}

Invalid() {
    echo "?Invalid command"
}




while true
do
    echo -n "Myftp> "
    read CMD
    # echo $CMD
    case $CMD in
        'help') Help    ;;
        'open') Open    ;;
        'quit') break   ;;
        '')     :       ;;
        *)      Invalid ;;
    esac

done
