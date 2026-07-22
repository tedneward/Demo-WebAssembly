#!/bin/bash
#wat2wasm $1 -o "${1%.wat}.wasm"

wat2wasm main.wat -o "main.wasm"
wat2wasm adder.wat -o "adder.wasm"
wasm-merge main.wasm main adder.wasm adder -o app.wasm 

