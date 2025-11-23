#!/bin/bash

source "$(dirname " $0")/logger.sh"
SOURCE=$1

BACKUP_DIR="$HOME/backups"

# Create backup directory
mkdir -p $BACKUP_DIR

if [ ! -d "$SOURCE" ]; then
    echo "Folder $SOURCE does not exist!"
  exit 1
fi

tar -czf $BACKUP_DIR/backup_$(date +%F_%T).tar.gz $SOURCE
echo "Backup of $SOURCE created in $BACKUP_DIR"

log "Backup completed for $SOURCE"
