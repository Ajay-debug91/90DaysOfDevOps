#!/bin/bash
set -euo pipefail

# Demonstrate set -u
echo "Trying undefined variable..."
# echo "$UNDEFINED_VAR"   # Uncomment to see error

# Demonstrate set -e
# false   # Uncomment to see script exit immediately

# Demonstrate set -o pipefail
# ls /nonexistent | grep "test"  # Uncomment to see failure propagate

echo "Strict mode demo complete"

