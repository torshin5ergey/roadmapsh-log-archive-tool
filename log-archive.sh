#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "Please, provide path to archived directory."
  exit 1
fi

DIR=$1
DATETIME=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_$DATETIME.tar.gz"

tar cfz $ARCHIVE_NAME $1

echo "Archived to $ARCHIVE_NAME"
