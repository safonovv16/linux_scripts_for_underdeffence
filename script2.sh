#!/bin/bash

# set log file name
log_file="secondsh_output_file_$(date +'%Y-%m-%d_%H:%M:%S').log"

# Getting uptime
uptime="$(uptime)"

# Getting current users
current_users="$(who)"

# Getting recent logins
recent_logins="$(last -a | head -n 10)"

# Getting top 10 processes by RAM usage
top_ram_proc="$(ps aux --sort=-%mem | head -n 11)"

# Getting top 10 processes by CPU usage
top_cpu_proc="$(ps aux --sort=-%cpu | head -n 11)"

# Getting virtual memory usage
virtual_memory="$(vmstat)"

# Getting disk space usage
disk_space="$(df -h)"

# Write results to the output file
echo "Uptime: $uptime" >> "$log_file"

echo "Current users: $current_users" >> "$log_file"

echo "Recent logins: $recent_logins" >> "$log_file"

echo "Top 10 processes by RAM usage:" >> "$log_file"
echo "$top_ram_proc" >> "$log_file"

echo "Top 10 processes by CPU usage:" >> "$log_file"
echo "$top_cpu_proc" >> "$log_file"

echo "Virtual memory usage:" >> "$log_file"
echo "$virtual_memory" >> "$log_file"

echo "Output written to $log_file"