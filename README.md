[![Build Status](https://travis-ci.org/borodust/bodge-chipmunk.svg)](https://travis-ci.org/borodust/bodge-chipmunk) [![Build status](https://ci.appveyor.com/api/projects/status/carmemviy6dq5173?svg=true)](https://ci.appveyor.com/project/borodust/bodge-chipmunk)

nn# bodge chipmunk wrapper

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
Here's how chipmunk [example](http://chipmunk-physics.net/release/ChipmunkLatest-Docs/#Intro-HelloChipmunk) from the manual translates to Common Lisp using this library.

#### C variant

<details>
<summary>C source</summary>
<p>

```c
#include <stdio.h>
#include <chipmunk.h>

int main(void){
  // cpVect is a 2D vector and cpv() is a shortcut for initializing them.
  cpVect gravity = cpv(0, -100);

  // Create an empty space.
  cpSpace *space = cpSpaceNew();
  cpSpaceSetGravity(space, gravity);

  // Add a static line segment shape for the ground.
  // We'll make it slightly tilted so the ball will roll off.
  // We attach it to a static body to tell Chipmunk it shouldn't be movable.
  cpShape *ground = cpSegmentShapeNew(cpSpaceGetStaticBody(space), cpv(-20, 5), cpv(20, -5), 0);
  cpShapeSetFriction(ground, 1);
  cpSpaceAddShape(space, ground);

  // Now let's make a ball that falls onto the line and rolls off.
  // First we need to make a cpBody to hold the physical properties of the object.
  // These include the mass, position, velocity, angle, etc. of the object.
  // Then we attach collision shapes to the cpBody to give it a size and shape.

  cpFloat radius = 5;
  cpFloat mass = 1;

  // The moment of inertia is like mass for rotation
  // Use the cpMomentFor*() functions to help you approximate it.
  cpFloat moment = cpMomentForCircle(mass, 0, radius, cpvzero);

  // The cpSpaceAdd*() functions return the thing that you are adding.
  // It's convenient to create and add an object in one line.
  cpBody *ballBody = cpSpaceAddBody(space, cpBodyNew(mass, moment));
  cpBodySetPos(ballBody, cpv(0, 15));

  // Now we create the collision shape for the ball.
  // You can create multiple collision shapes that point to the same body.
  // They will all be attached to the body and move around to follow it.
  cpShape *ballShape = cpSpaceAddShape(space, cpCircleShapeNew(ballBody, radius, cpvzero));
  cpShapeSetFriction(ballShape, 0.7);

  // Now that it's all set up, we simulate all the objects in the space by
  // stepping forward through time in small increments called steps.
  // It is *highly* recommended to use a fixed size time step.
  cpFloat timeStep = 1.0/60.0;
  for(cpFloat time = 0; time < 2; time += timeStep){
    cpVect pos = cpBodyGetPosition(ballBody);
    cpVect vel = cpBodyGetVelocity(ballBody);
    printf(
      "Time is %5.2f. ballBody is at (%5.2f, %5.2f). It's velocity is (%5.2f, %5.2f)\n",
      time, pos.x, pos.y, vel.x, vel.y
    );

    cpSpaceStep(space, timeStep);
  }

  // Clean up our objects and exit!
  cpShapeFree(ballShape);
  cpBodyFree(ballBody);
  cpShapeFree(ground);
  cpSpaceFree(space);

  return 0;
}
```

</p>
</details>

#### Common Lisp translation

*Note: I tried to translate `C` into `CL` as close as possible to the original, so what you see
below is totally not how idimoatic `CL` is written.*

```lisp
(cl:defpackage :chipmunk-example
  (:use :cl :claw)
  (:export main))
(cl:in-package :chipmunk-example)

(defun main ()
  (with-float-traps-masked ()
    ;; cpVect is a 2D vector and cpv() is a shortcut for initializing them.
    (with-free (gravity (cp:v 0d0 -100d0))
      ;; Create an empty space.
      (let ((space (%cp:space-new)))
        (%cp:space-set-gravity space gravity)
        ;; Add a static line segment shape for the ground.
        ;; We'll make it slightly tilted so the ball will roll off.
        ;; We attach it to a static body to tell Chipmunk it shouldn't be movable.
        (with-many-free ((a (cp:v -20d0 5d0))
                         (b (cp:v 20d0 -5d0)))
          (let ((ground (%cp:segment-shape-new (%cp:space-get-static-body space) a b 0d0)))
            (%cp:shape-set-friction ground 1d0)
            (%cp:space-add-shape space ground)
            ;; Now let's make a ball that falls onto the line and rolls off.
            ;; First we need to make a cpBody to hold the physical properties of the object.
            ;; These include the mass, position, velocity, angle, etc. of the object.
            ;; Then we attach collision shapes to the cpBody to give it a size and shape.
            (let* ((radius 5d0)
                   (mass 1d0)
                   ;; The moment of inertia is like mass for rotation
                   ;; Use the cpMomentFor*() functions to help you approximate it.
                   (moment (%cp:moment-for-circle mass 0d0 radius cp:+vzero+))
                   ;; The cpSpaceAdd*() functions return the thing that you are adding.
                   ;; It's convenient to create and add an object in one line.
                   (ball-body (%cp:space-add-body space (%cp:body-new mass moment))))
              (with-free (position (cp:v 0d0 15d0))
                (%cp:body-set-position ball-body position))
              ;; Now we create the collision shape for the ball.
              ;; You can create multiple collision shapes that point to the same body.
              ;; They will all be attached to the body and move around to follow it.
              (let ((ball-shape (%cp:space-add-shape space
                                                     (%cp:circle-shape-new ball-body radius cp:+vzero+))))
                (%cp:shape-set-friction ball-shape 0.7d0)
                ;; Now that it's all set up, we simulate all the objects in the space by
                ;; stepping forward through time in small increments called steps.
                ;; It is *highly* recommended to use a fixed size time step.
                (let ((time-step (float 1/60 0d0)))
                  (loop for time = 0 then (incf time time-step) while (< time 2)
                        do (c-with ((pos %cp:vect)
                                   (vel %cp:vect))
                             (%cp:body-get-position pos ball-body)
                             (%cp:body-get-velocity vel ball-body)
                             (format t "Time is ~5,2F. ball-body is at (~5,2F ~5,2F)). It's velocity is (~5,2F, ~5,2F)~&"
                                     time (pos :x) (pos :y) (vel :x) (vel :y))
                             (%cp:space-step space time-step))))
                ;; Clean up our objects and exit!
                (%cp:shape-free ball-shape)
                (%cp:body-free ball-body)
                (%cp:shape-free ground)
                (%cp:space-free space)))))))))
```

Copy and paste code above into your favorite REPL after loading `bodge-chipmunk` and invoke

```lisp
(chipmunk-example:main)
```
