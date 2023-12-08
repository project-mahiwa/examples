create Go project

```bash
go mod init mahiwa-example
```

create main.go

```go

package main

import (
   "github.com/project-mahiwa/mahiwa-frontend-go/serial"
   "github.com/project-mahiwa/mahiwa-frontend-go/arduino"
)

func main() {
    serial.Print("Hello mahiwa written in Go language")
    for {
    serial.Println("mahiwa running")
    arduino.Delay(900)
    }
}

```

setup dependency

```bash
go mod tidy
```

create target.json (It will work without this file, but since WebAssembly reserves two pages of linear memory, it will not work on microcontrollers with small RAM capacity.)

```json
{
  "inherits": ["wasi"],
  "ldflags": [
    "--initial-memory=65536",
    "--max-memory=65536",
    "-zstack-size=2048"
  ]
}
```

build WebAssembly file(wasm file name can be anything)

```bash
tinygo build -target target.json -o main.wasm main.go

```

(optional) If you want to see the wat code

```bash
wasm2wat main.wasm -o main.wat
```
