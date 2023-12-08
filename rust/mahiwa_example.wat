(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (import "arduino" "delay" (func (;0;) (type 0)))
  (import "serial" "print" (func (;1;) (type 1)))
  (func (;2;) (type 2)
    i32.const 2048
    i32.const 28
    call 4
    loop  ;; label = @1
      i32.const 1000
      call 3
      i32.const 2076
      i32.const 12
      call 5
      br 0 (;@1;)
    end)
  (func (;3;) (type 0) (param i32)
    local.get 0
    call 0)
  (func (;4;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 1)
  (func (;5;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 1
    i32.const 2088
    i32.const 1
    call 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 2048))
  (global (;1;) i32 (i32.const 2089))
  (global (;2;) i32 (i32.const 2096))
  (export "memory" (memory 0))
  (export "_start" (func 2))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 2048) "hello mahiwa written in Rusthello mahiwa\0a"))
