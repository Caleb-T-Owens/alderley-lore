#!/usr/bin/env sh
set -eu

PANDOC_VERSION="${PANDOC_VERSION:-3.9.0.2}"
INSTALL_DIR="$PWD/.bin"

mkdir -p "$INSTALL_DIR"

curl -fsSL \
  "https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz" \
  -o /tmp/pandoc.tar.gz

tar -xzf /tmp/pandoc.tar.gz -C /tmp

cp "/tmp/pandoc-${PANDOC_VERSION}/bin/pandoc" "$INSTALL_DIR/pandoc"
chmod +x "$INSTALL_DIR/pandoc"

"$INSTALL_DIR/pandoc" --version
