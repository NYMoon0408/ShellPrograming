#!/bin/bash

NET=192.168.10
CMD=poweroff

for i in 10 30 20
do
    ssh "$NET.$i" "$CMD"
    sleep 3
done