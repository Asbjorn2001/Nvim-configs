#[derive(Debug)]
struct Test {
    field: Type,
}

#[derive(Debug)]
struct SomeStruct {
    field: i32,
} 

extern "C" fn name(arg: Type) -> RetType {
    // add code here
}

fn foo(arg: SomeStruct) {
    arg.field += 1 
    arg = SomeStruct { field: 1 }
}

fn bar(num: i32) -> i32 {
    num += (num * num)
}
