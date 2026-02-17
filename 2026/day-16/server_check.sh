#!/bin/bash

read -p "Enter service name (e.g. nginx, sshd): " SERVICE

read -p "Do you want to check the status? (y/n): " ANSWER

if [ "$ANSWER" = "y" ]; then
    systemctl status $SERVICE

    if systemctl is-active --quiet $SERVICE; then
        echo "$SERVICE is active"
    else
        echo "$SERVICE is not active"
    fi
else
    echo "Skipped."
fi
