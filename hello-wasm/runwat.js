import fs from 'node:fs/promises';

// Use readFile to read contents of the "add.wasm" file
const wasmBuffer = await fs.readFile('main.wasm');

// Use the WebAssembly.instantiate method to instantiate the WebAssembly module
const wasmModule = await WebAssembly.instantiate(wasmBuffer);

// Exported function lives under instance.exports object
const { _start, add } = wasmModule.instance.exports;
_start();
const sum = add(55, 66);
console.log(sum, (typeof sum));
