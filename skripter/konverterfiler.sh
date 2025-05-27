#!/usr/bin/env bash
# convert-sh-dos2unix.sh
# Recursively convert every *.sh file under a given directory (defaults to ".")
# to Unix line endings using dos2unix.

set -euo pipefail

# ---------- configuration ----------
TARGET_DIR="/workspaces/docker_intro/" 
EXTENSION="sh"                # file extension to convert
# -----------------------------------

# Ensure dos2unix is available
if ! command -v dos2unix >/dev/null 2>&1; then
  echo "Error: dos2unix is not installed or not in \$PATH." >&2
  exit 1
fi

# Ensure the target directory exists
if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Error: \"$TARGET_DIR\" is not a directory." >&2
  exit 1
fi

echo "Converting *.$EXTENSION files under \"$TARGET_DIR\" ..."
# Use -print0 / -d '' to handle paths with spaces or special characters
find "$TARGET_DIR" -type f -name "*.${EXTENSION}" -print0 |
  while IFS= read -r -d '' file; do
    echo "  • $file"
    dos2unix "$file"
  done

echo "Done."
