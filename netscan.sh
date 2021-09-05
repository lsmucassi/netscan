#!/bin/bash

arp -a | awk '{print $2}' | cut -d "(" -f2 | cut -d ")" -f1 |
while read ipAddress; do
nmap -O $ipAddress | grep -E 'Device type|Nmap scan|Running|open'
echo "=======================[ IP ADDRESS: $ipAddress ]======================="
done