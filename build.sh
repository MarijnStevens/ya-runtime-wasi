#!/bin/bash

# packages:  libssl-dev:aarch64 libglib2.0
ARCH="aarch64"
TARGET="$ARCH-unknown-linux-gnu"
TARGET_DIR="./target/$TARGET/release/"

echo Build for $ARCH
PKG_CONFIG_ALLOW_CROSS=1 OPENSSL_STATIC=true \
cargo build --release --target $TARGET 

#mkdir -p ../yagna-binaries/$ARCH/
#\cp "$TARGET_DIR/gvmkit" ../yagna-binaries/$ARCH/
