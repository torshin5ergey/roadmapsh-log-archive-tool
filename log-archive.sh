#!/bin/bash

set -e

# Check source directory is not empty
if [ -z "$1" ]; then
  echo "Please, provide path to archived directory."
  exit 1
fi

if [ -n "$2" ]; then
  TARGET_DIR=$2
else
  TARGET_DIR="./"
fi

SOURCE_DIR=$1
DATETIME=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_PATH=${TARGET_DIR%/}/"logs_archive_$DATETIME.tar.gz"

tar cfz $ARCHIVE_PATH $SOURCE_DIR

echo "Successfully archived to $ARCHIVE_PATH"
