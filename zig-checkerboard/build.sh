#!/bin/bash
zig build
wc -c zig-out/bin/checkerboard.wasm
