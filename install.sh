#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SOURCE="$SCRIPT_DIR/feng-ge"

if [ ! -f "$SOURCE/pet.json" ] || [ ! -f "$SOURCE/spritesheet.webp" ]; then
  echo "Incomplete package: feng-ge/pet.json and feng-ge/spritesheet.webp are both required." >&2
  exit 1
fi

CODEX_ROOT=${CODEX_HOME:-"$HOME/.codex"}
DESTINATION="$CODEX_ROOT/pets/feng-ge"

if [ -d "$DESTINATION" ]; then
  TIMESTAMP=$(date +%Y%m%d-%H%M%S)
  BACKUP="$DESTINATION.backup-$TIMESTAMP"
  cp -R "$DESTINATION" "$BACKUP"
  echo "Backed up the previous version to: $BACKUP"
fi

mkdir -p "$DESTINATION"
cp "$SOURCE/pet.json" "$DESTINATION/pet.json"
cp "$SOURCE/spritesheet.webp" "$DESTINATION/spritesheet.webp"

if [ ! -s "$DESTINATION/pet.json" ] || [ ! -s "$DESTINATION/spritesheet.webp" ]; then
  echo "Installation verification failed." >&2
  exit 1
fi

echo "Feng Ge Codex Pet installed at: $DESTINATION"
echo "Restart Codex, or choose Settings > Pets > Refresh."
