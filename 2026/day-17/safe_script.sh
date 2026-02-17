#!/bin/bash
set -e

mkdir /tmp/devops-test || echo "Directory already exists"
cd /tmp/devops-test || echo "Failed to enter directory"
touch test.txt || echo "File creation failed"

echo "Script completed successfully"
