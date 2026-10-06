#!/data/data/com.termux/files/usr/bin/bash
# V4Z Core installer - places the v4zcore command into $PREFIX/bin
# by V4Z RASHD | https://t.me/rashdteem
set -e

echo "[*] V4Z Core installer"

PREFIX_DIR="${PREFIX:-/data/data/com.termux/files/usr}"
DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$PREFIX_DIR/bin"
cp "$DIR/v4zcore" "$PREFIX_DIR/bin/v4zcore"
chmod +x "$PREFIX_DIR/bin/v4zcore"

cat <<'BANNER'

  V4Z Core installed.
  Run:  v4zcore            (help)
        v4zcore list       (see modules)
        v4zcore install lang --python

  Channel: https://t.me/rashdteem
BANNER
