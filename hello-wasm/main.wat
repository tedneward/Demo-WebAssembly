(module
    (func $add (param $a i32) (param $b i32) (result i64)
        (i64.add
            (i64.extend_i32_s (local.get $a))
            (i64.extend_i32_s (local.get $b))
        )
    )
    (func $start
        i32.const 2
        i32.const 4
        call $add
        drop
    )
    (start $start)
    (export "_start" (func $start))
    (export "add" (func $add))
)
