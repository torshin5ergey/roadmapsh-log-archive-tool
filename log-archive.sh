#!/bin/bash

set -e

# Display help
show_help() {
  echo "log-archive - simple archive tool"
  echo -e "\nUsage:"
  echo "  log-archive [-h] SOURCE [TARGET_DIR]"
  echo -e "\noptional arguments:"
  echo "  TARGET_DIR   target directory for archive"
  echo -e "  -h, --help   show this help message and exit\n"
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

SOURCE_DIR="$1"
DATETIME=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_PATH="${TARGET_DIR%/}/logs_archive_$DATETIME.tar.gz"

tar cfz "$ARCHIVE_PATH" "$SOURCE_DIR"

echo "Successfully archived to $ARCHIVE_PATH"
