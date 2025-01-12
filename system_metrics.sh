#!/bin/bash

#CPU Usage (Time not spent in idle task)
echo "1. CPU Usage: $(awk '/^cpu / {total=($2+$3+$4+$5+$6+$7+$8); idle=$5; non_idle=total-idle; usage=(non_idle/total)*10000; printf "%.2f%%\n", usage}' /proc/stat) " 
