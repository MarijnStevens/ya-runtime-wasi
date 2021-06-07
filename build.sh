#!/bin/bash

ARCH="aarch64"
TARGET="$ARCH-unknown-linux-gnu"
TARGET_DIR="./target/$TARGET/release/"

echo Build for $ARCH
PKG_CONFIG_ALLOW_CROSS=1 OPENSSL_STATIC=true \
cargo build --release --target $TARGET && \

\cp "$TARGET_DIR/ya-runtime-wasi" ../yagna-binaries/plugins/ || exit 1 
