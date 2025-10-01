(module
    (func $add (param $a i32) (param $b i32) (result i64)
        (i64.add
            (i64.extend_i32_s (local.get $a))
            (i64.extend_i32_s (local.get $b))
        )
    )
    (export "add" (func $add))
)