#!/data/data/com.termux/files/usr/bin/bash
# V4Z Core installer - places the v4zcore command into $PREFIX/bin
# by V4Z RASHD | https://t.me/rashdteem
set -e

echo "[*] V4Z Core installer"

PREFIX_DIR="${PREFIX:-/data/data/com.termux/files/usr}"
RAW="https://raw.githubusercontent.com/v4zrashd/RASHDCoreTermuxx/main"
DIR="$(cd "$(dirname "$0" 2>/dev/null)" 2>/dev/null && pwd || echo "")"
SRC=""
if [ -n "$DIR" ] && [ -f "$DIR/v4zcore" ]; then
  SRC="$DIR/v4zcore"
else
  echo "[*] Downloading v4zcore..."
  TMPD="$(mktemp -d)"
  curl -fsSL "$RAW/v4zcore" -o "$TMPD/v4zcore"
  SRC="$TMPD/v4zcore"
fi

mkdir -p "$PREFIX_DIR/bin"
cp "$SRC" "$PREFIX_DIR/bin/v4zcore"
chmod +x "$PREFIX_DIR/bin/v4zcore"

cat <<'BANNER'

  V4Z Core installed.
  Run:  v4zcore            (help)
        v4zcore list       (see modules)
        v4zcore install lang --python

  Channel: https://t.me/rashdteem
BANNER
