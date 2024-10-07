#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <CMD OPTIONS ARGS>"
    exit 1
fi
CMD="$*"

SERVERLIST=/root/shell/server.list

# cat << EOF > $SERVERLIST
# 172.16.6.250
# 172.16.6.207
# EOF

for i in $(cat $SERVERLIST)
do 
    echo "======$i=========="
    ssh "$i" "$CMD"
    echo
done
