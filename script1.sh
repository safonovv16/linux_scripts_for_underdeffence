#!/bin/bash

# Getting the os version by uname command
os_version=$(uname -a)

# Getting network interfaces by ifconfig and ip commands
network_interfaces=$(ifconfig -a ; ip addr show)

# Getting firewall configuration by ufw command
firewall_config=$(ufw status)

# Getting additional system information
resolv_conf=$(cat /etc/resolv.conf)
sysctl_conf=$(cat /etc/sysctl.conf)
modprobe_conf=$(cat /etc/modprobe.conf)

# Write the output to a file
output_file="os_info.txt"

echo "=====Operating System Version=====" > $output_file
echo "$os_version" >> $output_file

echo "" >> $output_file
echo "=====Network Interfaces=====" >> $output_file
echo "$network_interfaces" >> $output_file

echo "" >> $output_file
echo "=====Firewall Configuration=====" >> $output_file
echo "$firewall_config" >> $output_file

echo "" >> $output_file
echo "=====Additional System Information=====" >> $output_file

echo "/etc/resolv.conf:" >> $output_file
echo "$resolv_conf" >> $output_file

echo "" >> $output_file
echo "/etc/sysctl.conf:" >> $output_file
echo "$sysctl_conf" >> $output_file


echo "" >> $output_file
echo "/etc/modprobe.conf:" >> $output_file
echo "$modprobe_conf" >> $output_file

echo "Output written to $output_file"