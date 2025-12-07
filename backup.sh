#!/bin/bash
# backup script 

# Check for directory argument
[ -z "$1" ] && { echo "Usage: $0 <directory>"; exit 1; }

# Variables
DIR="$1"
BACKUP_DIR="$HOME/backups"
mkdir -p "$BACKUP_DIR"
FILE="$BACKUP_DIR/$(basename "$DIR")_$(date +%Y%m%d_%H%M%S).tar.gz"

# Create backup
tar -czf "$FILE" -C "$(dirname "$DIR")" "$(basename "$DIR")"

echo "Backup saved as $FILE"
