#!/bin/bash

THRESHOLD_LIMIT=90

USED_LIMIT=$(df -h | grep '/' | awk '$NF=="/"{ printf " :%s\n Used: %dGB\n Size : %dGB\n Available : %.fGB \n", $5,%3,%2,%4}')

if [ "$USED_LIMIT" > "$THRESHOLD_LIMIT" ]; then

mail -s "Disk Space Has Been Breached." mert.c.tatar@gmail.com <<EOF

Disk Space is Running Currently With #USED_LIMIT

EOF

fi
