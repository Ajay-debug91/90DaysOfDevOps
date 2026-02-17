#!/bin/bash

# Function to check disk usage
check_disk() {
    df -h /
}

# Function to check memory usage
check_memory() {
    free -h
}

# Main section
main() {
    echo "Disk Usage:"
    check_disk
    echo
    echo "Memory Usage:"
    check_memory
}

main

