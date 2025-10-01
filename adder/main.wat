(module
    (import "adder" "add" (func $add (param i32 i32) (result i32)))
    (func $start
        ;; Call the imported "add" function with 2 and 4
        i32.const 2
        i32.const 4
        call $add
        drop ;; Discard the result
    )
    (start $start)
    (export "_start" (func $start))
)