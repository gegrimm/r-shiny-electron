#!/usr/bin/env bash
set -e

# Download and extract the main Mac Resources directory
# Requires xar and cpio
mkdir -p ./pandoc

cd ./pandoc
curl -L -O https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-macOS.pkg

xar -xf pandoc-2.3.1-macOS.pkg

cat pandoc.pkg/Payload | gunzip -dc | cpio -i
rm -r pandoc-2.3.1-macOS.pkg pandoc.pkg Resources Distribution
