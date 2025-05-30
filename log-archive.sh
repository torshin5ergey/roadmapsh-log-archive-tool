#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "Please, provide path to archived directory."
  exit 1
fi

SOURCE_DIR=$1
DATETIME=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_$DATETIME.tar.gz"

tar cfz $ARCHIVE_NAME $SOURCE_DIR

echo "Archived to $ARCHIVE_NAME"
