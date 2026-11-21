#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="${1:-$ROOT/source}"
TMP_ARCHIVE="${TMPDIR:-/tmp}/ferengine-source.tar.xz"

mkdir -p "$DEST"
cat "$ROOT"/.source-parts/FERENGINE_SOURCE.tar.xz.b64.part-* | base64 --decode > "$TMP_ARCHIVE"
xz --test "$TMP_ARCHIVE"
tar -xJf "$TMP_ARCHIVE" -C "$DEST"
test -f "$DEST/FerEngine/CMakeLists.txt"
echo "FERENGINE source extracted to: $DEST/FerEngine"
