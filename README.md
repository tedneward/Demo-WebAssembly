# Demo-WebAssembly
A collection of demos about WebAssembly

## empty
A empty WAT module; the smallest module that still assembles.

## adder
A two-module WAT example. Use `build.sh` to build the two WAT files into a single `app.wasm` file, then run with your WASM interpreter of choice, such as `wasm-interp app.wasm`. Note that no output appears, as it just adds two numbers and then throws away the result. No other output appears.

## hello-c
Using Emscripten to compile C code into WASM. `emcc` builds both the WASM output as well as an HTML and JS harness to load and run the compiled code--use `run.sh` to run the Emscripten HTTP server and browse to http://localhost:9000/hello.html.

## hello-cpp
Using Emscripten to compile C++ code into WASM. `emcc` builds both the WASM output as well as an HTML and JS harness to load and run the compiled code--use `run.sh` to run the Emscripten HTTP server and browse to http://localhost:9000/hello.html.

## hello-sdl
Using Emscripten to compile C code  into WASM. The C code uses SDL (Simple Direct Layer) to display a square of randomized color pixels (visual noise). `emcc` builds both the WASM output as well as an HTML and JS harness to load and run the compiled code--use `run.sh` to run the Emscripten HTTP server and browse to http://localhost:9000/hellosdl.html.

## zig-checkerboard
A Zig example that shows how Zig can produce WASM. The code is a simple checkerboard pattern with random colors in each square. Use `build.sh` (which is a simple wrapper around `zig build`) to build the wasm, then `run.sh` (which is a simple wrapper around `python3 -m http.server`) to host the HTTP server that serves up `index.html` and `script.js`.

# Future directions
A non-trivial SDL example that uses images and sound and so on, just to show it can be done.

A Zig example.

