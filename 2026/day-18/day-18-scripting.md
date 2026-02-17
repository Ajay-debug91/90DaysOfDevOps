set -euo pipefail

set -e -> exit if any command fails

set -u ->  exit if an undefined variable is used

set -o pipefail -> ensures errors in piped commands propagate

Key Learnings

Functions help reuse code and organize scripts.

local variables prevent unexpected side-effects.

Strict mode improves script safety in production environments.
