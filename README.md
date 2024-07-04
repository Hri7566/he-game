# he-sample-program

This is a sample program for [hengine](https://github.com/Hri7566/hengine).

## Requirements

For compilation, you must have [premake5](https://premake.github.io/), [ninja](https://ninja-build.org/), and [raylib](https://www.raylib.com/) installed system-wide.

## Building

```
$ git clone https://github.com/Hri7566/hengine
$ cd hengine
$ git submodule update --init --recursive

$ cd hengine
$ premake5 ninja && ninja
$ cd ..

$ premake5 ninja && ninja
```

The program is output in the `bin/Debug` folder.
