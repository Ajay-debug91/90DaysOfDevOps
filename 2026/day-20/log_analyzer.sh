#!/bin/bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <log_file_path> <num_lines>"
    exit 1
fi

log_file_path="$1"
num_lines="$2"

# Validate num_lines is a positive integer
if ! [[ "$num_lines" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: num_lines must be a positive integer."
    exit 1
fi

if [ -e "$log_file_path" ]; then
    echo "Error: File already exists at $log_file_path."
    exit 1
fi

log_levels=("INFO" "DEBUG" "ERROR" "WARNING" "CRITICAL")
messages=(
    "Failed to connect to upstream"
    "Disk usage exceeded threshold"
    "Segmentation fault in worker process"
    "Invalid input received"
    "Out of memory: kill process"
    "Health check passed"
    "Config reloaded successfully"
    "Request timeout after 30s"
    "Retrying connection attempt"
    "Cache invalidated"
)

generate_log_line() {
    local log_level="${log_levels[$((RANDOM % ${#log_levels[@]}))]}"
    local msg="${messages[$((RANDOM % ${#messages[@]}))]}"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$log_level] $msg"
}

for ((i = 0; i < num_lines; i++)); do
    generate_log_line >> "$log_file_path"
done

echo "Log file created at: $log_file_path with $num_lines lines."
