#!/bin/bash

# HOST=/etc/hosts
HOSTS=/root/shell/hosts
NET=172.16.6

# ens224 device의
# inet 172.16.6.207/24 brd 172.16.6.255 scope global noprefixroute ens224에서
# 207만 뽑아오기 위해
IP1=$(ip a show ens224 \
    | grep 'inet ' \
    | awk '{print $2}' \
    | awk -F / '{print $1}' \
    | awk -F . '{print $4}')
# echo $IP1 ; read

for i in $(seq 200 300)
do
    if [ $i -eq $IP1 ]; then        # [ $i -eq $IP1 ] && continue 로 줄일 수 있음
        continue
    fi
    echo "$NET.$i   linux$i.example.com     linux$i" >> $HOSTS
done
