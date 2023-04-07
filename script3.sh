#!/bin/bash

# Service 'apache2' is specified here, but you can try any other

# Name of the service to check
service_name="apache2"

# Check if the service is running
if systemctl is-active $service_name; then
    echo "The $service_name service is already running."
else
    # Prompt the user for confirmation
    read -p "The $service_name service is not running. Do you want to start it? [y/n] " answer

    if [[ $answer =~ ^[Yy]$ ]]; then
        sudo service $service_name start        # Start service
        echo "The $service_name service has been started."
    else
        echo "The $service_name service has not been started."
    fi
fi