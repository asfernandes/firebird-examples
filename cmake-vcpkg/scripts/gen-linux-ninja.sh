#!/usr/bin/env bash
set -e
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ROOT_DIR=$SCRIPT_DIR/..
BUILD_DIR="${BUILD_DIR:-$ROOT_DIR/build/linux-ninja}"

cmake \
	-S $ROOT_DIR \
	-B $BUILD_DIR \
	-DCMAKE_INSTALL_PREFIX=$BUILD_DIR/install \
	-G "Ninja Multi-Config"
