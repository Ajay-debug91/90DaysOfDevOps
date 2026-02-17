#!/bin/bash
set -euo pipefail

# Function: Hostname and OS info
hostname_info() {
    echo "=== Hostname & OS Info ==="
    echo "Hostname: $(hostname)"
    echo "OS Info: $(uname -a)"
    echo
}

# Function: Uptime
uptime_info() {
    echo "=== Uptime ==="
    uptime
    echo
}

# Function: Disk Usage (top 5 by size)
disk_usage() {
    echo "=== Disk Usage (Top 5) ==="
    du -sh /* 2>/dev/null | sort -hr | head -5
    echo
}

# Function: Memory Usage
memory_usage() {
    echo "=== Memory Usage ==="
    free -h
    echo
}

# Function: Top 5 CPU-consuming processes
cpu_usage() {
    echo "=== Top 5 CPU-consuming Processes ==="
    ps -eo pid,comm,%cpu --sort=-%cpu | head -6
    echo
}

# Main function
main() {
    hostname_info
    uptime_info
    disk_usage
    memory_usage
    cpu_usage
}

main

