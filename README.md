[![Build Status](https://travis-ci.org/borodust/bodge-chipmunk.svg)](https://travis-ci.org/borodust/bodge-chipmunk) [![Build status](https://ci.appveyor.com/api/projects/status/carmemviy6dq5173?svg=true)](https://ci.appveyor.com/project/borodust/bodge-chipmunk)

# BODGE-CHIPMUNK

Thin wrapper over [`chipmunk`](http://chipmunk-physics.net/) 2d physics library.

# Requirements

* ASDF/Quicklisp
* x86_64/i686 GNU/Linux, macOS or Windows

# Loading
```lisp
(ql:quickload '(chipmunk-blob bodge-chipmunk))
```

# Usage

### Loading compiled foreign library
Unlike many other wrappers, this one doesn't load shared library into the image upon system
loading. That what [`chipmunk-blob`](https://github.com/borodust/chipmunk-blob/) system is
for. It contains required compiled foreign library and loads it for you, that's why you need to
load it before using `bodge-chipmunk` functions. You, of course, can load wrapper without
`chipmunk-blob` by invoking

```lisp
(ql:quickload :bodge-chipmunk)
```

Then let `cffi` know where to find your own version of compiled foreign library and then call
`(cffi:load-foreign-library 'cp:libchipmunk)` manually yourself.

### Interface
All wrapped functions can be found in `%chipmunk` package. On the other hand, `chipmunk` package
contains minimally lispified wrappers and utility functions.


# Example
See [example](example/example.org) source.
