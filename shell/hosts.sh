#!/bin/bash

# HOST=/etc/hosts
HOSTS=/root/shell/hosts
NET=172.16.6

for i in $(seq 200 300)
do
    echo "$NET.$i   linux$i.example.com     linux$i" >> $HOSTS
done
