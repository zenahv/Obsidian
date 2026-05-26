# I - Installation
Install :

```bash
$ curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
```

Check compiler version :
```bash$ 
$ rustc --version
```

Update :
```bash
$ rustup update
```

Get documentation :
```bash
$ rustup doc
```

# II - Hello, world!

Default `main.rs` file
```Rust
fn main() {
    println!("Hello, world!");
}
```

To compile :
```bash
$ rustc main.rs
$ ./main
Hello, world!
```

The `main` function is required for every rust program.

To use libraries, follow the example below :
```Rust
use std::io;
```

# III - Hello, cargo!

Check version :
```bash
$ cargo --version
```

Create a new project `new_project` and move to the folder
```bash
$ cargo new new_project
$ cd new_project
```

`Cargo.toml` config :
```toml
[package]
name = "hello_cargo"
version = "0.1.0"
edition = "2024"

[dependencies]
rand = "0.8.5"
```
Some functions need crates, for example `rand = "0.8.5"` indicates the version 0.8.5 of the rand crate is used in the project.

