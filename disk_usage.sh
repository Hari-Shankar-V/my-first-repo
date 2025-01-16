#!/bin/bash
DISK_USAGE=$(df -h | awk '{print $5}' | sed 's/%//g')
echo "disk usage is $DISK_uSAGE "
