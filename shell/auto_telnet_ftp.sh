#!/bin/bash

IP=172.16.6.207

# Auto telnet
Cmd() {
    sleep 2     ; echo 'root'
    sleep 0.5   ; echo 'centos'
    sleep 0.5   ; echo 'hostname'
    sleep 0.5   ; echo 'tar cvzf /tmp/linux207.tar.gz /home'
    sleep 0.5   ; echo 'exit'

}

Cmd | telnet $IP

# Auto FTP
ftp -n $IP << EOF
user root centos
cd /tmp
lcd /root
bin
hash
prompt
mget linux207.txt
quit
EOF

echo "-----------------------"
ls -l /root/linux*.txt
