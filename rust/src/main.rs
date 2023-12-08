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
