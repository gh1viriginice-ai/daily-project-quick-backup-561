#!/bin/bash
SRC="${1:-.}" DST="${2:-/tmp/backups/$(date +%Y%m%d)}"
mkdir -p "$DST"
rsync -av --delete "$SRC/" "$DST/"
echo "[$(date)] Backup: $SRC -> $DST" >> /tmp/backup.log
echo "Done: $DST"
