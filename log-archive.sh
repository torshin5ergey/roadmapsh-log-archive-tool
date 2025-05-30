#!/bin/bash

set -e

# Display help
show_help() {
cat << EOF
log-archive - simple archive tool

Usage:
  log-archive [-h] SOURCE [TARGET_DIR]

Arguments:
  SOURCE       source file/directory to archive

Optional arguments:
  TARGET_DIR   target directory for archive (default: current directory)
  -h, --help   show this help message and exit
EOF
}

# Check source directory is not empty
if [ -z "$1" ]; then
  echo "Please, provide path to archived directory."
  show_help
  exit 1
fi

# Show help
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  show_help
  exit 0
fi

# Get target directory
if [ -n "$2" ]; then
  TARGET_DIR="$2"
else
  TARGET_DIR="./"
fi

SOURCE="$1"
DATETIME=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_PATH="${TARGET_DIR%/}/logs_archive_$DATETIME.tar.gz"

echo "Archiving ${SOURCE} to ${ARCHIVE_PATH}"
tar cfz "$ARCHIVE_PATH" "$SOURCE"

echo "Successfully archived to $ARCHIVE_PATH"
