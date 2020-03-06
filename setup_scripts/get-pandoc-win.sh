#!/usr/bin/env bash
set -e

# Download and extract the main Mac Resources directory
mkdir -p ./pandoc

cd ./pandoc
curl -L -O https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-windows-x86_64.zip

unzip pandoc-2.3.1-windows-x86_64.zip

mkdir -p usr/local/bin
mv pandoc-2.3.1-windows-x86_64/pandoc.exe usr/local/bin/pandoc.exe
mv pandoc-2.3.1-windows-x86_64/pandoc-citeproc.exe usr/local/bin/pandoc-citeproc.exe

rm -r pandoc-2.3.1-windows-x86_64 pandoc-2.3.1-windows-x86_64.zip
