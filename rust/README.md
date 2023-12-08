create Rust project

```bash
cargo add mahiwa_frontend_rust
```

create src/main.rs

```rust
#![no_std]
#![no_main]

use mahiwa_frontend_rust::arduino;
use mahiwa_frontend_rust::serial;

#[no_mangle]
fn _start() {
    serial::print("hello mahiwa written in Rust");
    loop {
        arduino::delay(1000);
        serial::println("hello mahiwa");
    }
}
```

create .cargo/config

```toml
[build]
target = "wasm32-unknown-unknown"
rustflags = [
  "-C", "link-args=-zstack-size=2048 -s",
]
```

build WebAssembly

```bash
rustup target add wasm32-unknown-unknown
cargo build --release
```

The WebAssembly files are located in target/wasm32-unknown-unknown/release.

(optional) If you want to see the wat code

```bash
cp target/wasm32-unknown-unknown/release/mahiwa_example.wasm ./
wasm2wat mahiwa_example.wasm -o mahiwa_example.wat
```
