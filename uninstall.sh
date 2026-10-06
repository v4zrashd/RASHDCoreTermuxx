#!/data/data/com.termux/files/usr/bin/bash
# V4Z Core uninstaller - removes the v4zcore command only.
# Module packages you installed stay untouched; remove them with
#   v4zcore uninstall <module>
# by V4Z RASHD | https://t.me/rashdteem
set -e

PREFIX_DIR="${PREFIX:-/data/data/com.termux/files/usr}"
rm -f "$PREFIX_DIR/bin/v4zcore"
echo "[*] v4zcore command removed."
