package main

import (
	"github.com/project-mahiwa/mahiwa-frontend-go/arduino"
	"github.com/project-mahiwa/mahiwa-frontend-go/serial"
)

// mainはtarget wasiのときに絶対に必要
func main() {
	serial.Print("Hello mahiwa written in Go language")
	for {
		serial.Println("mahiwa running")
		arduino.Delay(900)
	}
}
