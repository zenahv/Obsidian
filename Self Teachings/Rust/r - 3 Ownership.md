# I - What is Ownership ?

## 1. Undefined Behaviour
$\to$ Ownership exists to prevent <u>undefined behaviour</u>

<span style="color:turquoise">Example </span> 
```Rust
fn read(y: bool) {
    if y {
        println!("y is true!");
    }
}

fn main() {
    let x = true;
    read(x);
}
```
is safe, while :

```Rust
fn read(y: bool) {
    if y {
        println!("y is true!");
    }
}

fn main() {
    read(x); // oh no! x isn't defined!
    let x = true;
}
``` 
isn't because `read(x)` is called before `x` is defined,
if the program is still executed, `x` could hold anything in memory, which causes <u>undefined behaviour</u>


## 2. Fundamentals of Ownership

Variables live in the <u>Stack</u>
![[Rust 1.png]]

While boxes live in the <u>Heap</u>
![[Rust 2.png]]

Stuff in the <u>Heap</u> needs a pointer for it to be found/used, <b><u>only one pointer can exist at any time</u></b>
![[Rust 3.png]]
Here, when `let b = a;` is executed, <u>Ownership is transferred from a to b</u>


<u><b>you cannot manually manage memory</b></u>, as this could cause some issues with how Rust is built.


If a we deallocate a box, its owner is responsible for the deallocation of its content in the Heap.
![[Rust 4.png]]

**Box deallocation principle (fully correct):** If a variable owns a box, when Rust deallocates the variable’s frame, then Rust deallocates the box’s heap memory.  

Boxes are used by <u>data structures</u> to hold a variable amount of elements (like `String`, `Vec` or others)
![[Rust 5.png]]

$\to$ variables <u><b>cannot</b></u> be used after being moved 
```Rust
fn main() {
    let first = String::from("Ferris");
    let full = add_suffix(first);
    println!("{full}, originally {first}"); // first is now used here
}

fn add_suffix(mut name: String) -> String {
    name.push_str(" Jr.");
    name
}
```
Here, the contents of `first` has been moved in `name`, then in `full`, so `first` points to deallocated memory

>**Moved heap data principle:** if a variable `x` moves ownership of heap data to another variable `y`, then `x` cannot be used after the move.

<b>Although having a pointer to freed memory is not an issue, using it is</b>

## 3. `.clone()` method

If we dont want to move data, we can use the`.clone()` method.

In the previous example, this method is applied so the previous program works te way we intend it to
```Rust
fn main() {
    let first = String::from("Ferris");
    let first_clone = first.clone(); //L1
    let full = add_suffix(first_clone); //L2
    println!("{full}, originally {first}");
}

fn add_suffix(mut name: String) -> String {
    name.push_str(" Jr.");
    name
}
```
![[Rust 6.png]]

References in Rust work the same as in C (with minor differences), and have the same syntax :
```Rust
fn main () {
let a = String::from("hello");
let ac = a.clone();
let b = &ac;
println!("{} is the same as {}",a,*b);
}
```

Sometimes references are implicit 
```Rust
let x: Box<i32> = Box::new(-1);
let x_abs1 = i32::abs(*x); // explicit dereference
let x_abs2 = x.abs();      // implicit dereference
assert_eq!(x_abs1, x_abs2);

let r: &Box<i32> = &x;
let r_abs1 = i32::abs(**r); // explicit dereference (twice)
let r_abs2 = r.abs();       // implicit dereference (twice)
assert_eq!(r_abs1, r_abs2);

let s = String::from("Hello");
let s_len1 = str::len(&s); // explicit reference
let s_len2 = s.len();      // implicit reference
assert_eq!(s_len1, s_len2);
```

Rust will not allow simultaneous Aliasing and Mutation :
>Aliasing $\to$ Accessing the same data through different variables
>Mutation $\to$ Kinda obvious what it is

If one variable changes something, it could cause UB.

<span style="color:turquoise">Exemple </span> 
One variable could deallocate the aliased data, while another variable tries to use it.

To fix that, Rust uses a permission system :
- **Read** (<span style="color:orange"><b>R</b></span>): data can be copied to another location.
- **Write** (<span style="color:turquoise"><b>W</b></span>): data can be mutated.
- **Own** (<span style="color:crimson"><b>O</b></span>): data can be moved or dropped.
- **Flow** (<span style="color:lime"><b>F</b></span>): data can be used in a particular expression

A variable has the read and own permissions (<span style="color:orange"><b>R</b></span>/<span style="color:crimson"><b>O</b></span>), and has the write one (<span style="color:turquoise"><b>W</b></span>) if the keyword `mut` is present

Let's create a test variable 
```Rust
let mut v: Vec<i32> = vec![1, 2, 3];
```

`v` has <span style="color:orange"><b>R</b></span>/<span style="color:turquoise"><b>W</b></span>/<span style="color:crimson"><b>O</b></span> 

```Rust
let num: &i32 = &v[2];
```

Now, `num` owns `&v[2]`,
`v` has <span style="color:orange"><b>R</b></span>
`num` has <span style="color:orange"><b>R</b></span>/<span style="color:crimson"><b>O</b></span>
`*num` has <span style="color:orange"><b>R</b></span>

When `num` is used for its last time, it will lose all its permissions and `v` will gain all its original permissions

`v` will lose all its permissions when used for the last time

now if we do this :
```Rust
let x = 0;

let mut x_ref = &x;
```

`x` has <span style="color:orange"><b>R</b></span>/<span style="color:crimson"><b>O</b></span> originally
then loses <span style="color:crimson"><b>O</b></span> when we create `x_ref`
`x_ref` has <span style="color:orange"><b>R</b></span>/<span style="color:turquoise"><b>W</b></span>/<span style="color:crimson"><b>O</b></span> 
`*x_ref` has <span style="color:orange"><b>R</b></span>

Some actions require certain permissions
- Doing `&x` requires <span style="color:orange"><b>R</b></span>
- Doing `v.push()` requires <span style="color:orange"><b>R</b></span>/<span style="color:turquoise"><b>W</b></span>
- Doing `drop(v)` requires <span style="color:orange"><b>R</b></span>/<span style="color:crimson"><b>O</b></span> 
- $\vdots$

The flow permission is different, as <span style="color:lime"><b>F</b></span> doesn't change throughout the body of a function

Lets take an example :
```Rust
fn first(strings: &Vec<String>) -> &String {
    let s_ref = &strings[0];
    s_ref
}
```

`&strings[0]` & `s_ref` require both <span style="color:orange"><b>R</b></span> and <span style="color:lime"><b>F</b></span> permissions

```Rust
fn first_or<'a, 'b, 'c>(strings: &'a Vec<String>, default: &'b String) -> &'c String {
    if strings.len() > 0 {
        &strings[0]
    } else {
        default
    }
}
```
Will not compile as `&strings[0]` & `default` lack the <span style="color:lime"><b>F</b></span> permissions
Since `first_or` returns either `&strings[0]` or `default`, if one of the two gets deallocated in any way, 
the program will be unsafe if the function allows that value to *flow* into the return value 

![[Rust 7.png]]
![[Rust 8.png]]

$\vdots$

# General concepts summed up

## Ownership at runtime

We’ll start by reviewing how Rust uses memory at runtime:

- Rust allocates local variables in stack frames, which are allocated when a function is called and deallocated when the call ends.
- Local variables can hold either data (like numbers, booleans, tuples, etc.) or pointers.
- Pointers can be created either through boxes (pointers owning data on the heap) or references (non-owning pointers).

## Ownership at compile time
Rust tracks <span style="color:orange"><b>R</b></span> (read), <span style="color:turquoise"><b>W</b></span> (write), and <span style="color:crimson"><b>O</b></span> (own) permissions on each variable. Rust requires that a variable has appropriate permissions to perform a given operation
