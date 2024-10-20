#!/bin/bash

# Check CPU utilization
echo "CPU Utilization:"
mpstat 1 1 | awk 'NR==4 {print "Average CPU Usage: " 100-$NF "%"}'

# Check Memory utilization
echo ""
echo "Memory Utilization:"
free -m | awk 'NR==2 {printf "Used Memory: %s MB (%.2f%%)\n", $3, ($3/$2)*100}'

# Check Disk utilization
echo ""
echo "Disk Utilization:"
df -h | awk 'NR>1 {printf "%s\t%s\t%s\t%s\n", $1, $2, $5, $6}'

# Check top 5 processes by CPU usage
echo ""
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n 6
