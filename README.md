# rpass


## Description

A simple password generator.

Written in Lua.


## Caveats

Not customisable as of yet.

Relies on `os.time()` for generating a `math.randomseed()`,
which is a potential security issue.

Does not adhere to standard UNIX getopt currently.

See `lparse` repo for further info.


## Usage

```
lua src/rpass.lua <length> <special>
lua src/rpass.lua --length 10 --special true
```

length **OPTIONAL**: The length of password to generate.
special **OPTIONAL**: Whether to include special characters.
