(cl:defpackage :chipmunk.example
  (:use :cl :claw)
  (:export #:run))

(cl:in-package :chipmunk.example)

(defun main ()
  ;; cpVect is a 2D vector and cpv() is a shortcut for initializing them.
  (cffi:with-foreign-object (gravity '%chipmunk:vect)
    (cffi:with-foreign-slots ((%chipmunk:x %chipmunk:y) gravity %chipmunk:vect)
      (setf %chipmunk:x 0f0)
      (setf %chipmunk:y -100f0))
    ;; Create an empty space.
    (let ((space (%chipmunk:space-new)))
      (%chipmunk:space-set-gravity space gravity)
      ;; Add a static line segment shape for the ground.
      ;; We'll make it slightly tilted so the ball will roll off.
      ;; We attach it to a static body to tell Chipmunk it shouldn't be movable.
      (cffi:with-foreign-objects ((a '%chipmunk:vect)
                                  (b '%chipmunk:vect))
        (cffi:with-foreign-slots ((%chipmunk:x %chipmunk:y) a %chipmunk:vect)
          (setf %chipmunk:x -20f0)
          (setf %chipmunk:y 5f0))
        (cffi:with-foreign-slots ((%chipmunk:x %chipmunk:y) b %chipmunk:vect)
          (setf %chipmunk:x 20f0)
          (setf %chipmunk:y -5f0))
        (let ((ground (%chipmunk:segment-shape-new (%chipmunk:space-get-static-body space)
                                             a b 0f0)))
          (%chipmunk:shape-set-friction ground 1f0)
          (%chipmunk:space-add-shape space ground)
          ;; Now let's make a ball that falls onto the line and rolls off.
          ;; First we need to make a cpBody to hold the physical properties of the object.
          ;; These include the mass, position, velocity, angle, etc. of the object.
          ;; Then we attach collision shapes to the cpBody to give it a size and shape.
          (let* ((radius 5f0)
                 (mass 1f0)
                 ;; The moment of inertia is like mass for rotation
                 ;; Use the cpMomentFor*() functions to help you approximate it.
                 (moment (%chipmunk:moment-for-circle mass 0f0 radius chipmunk:+vzero+))
                 ;; The cpSpaceAdd*() functions return the thing that you are adding.
                 ;; It's convenient to create and add an object in one line.
                 (ball-body (%chipmunk:space-add-body space (%chipmunk:body-new mass moment))))
            (cffi:with-foreign-object (pos '%chipmunk:vect)
              (cffi:with-foreign-slots ((%chipmunk:x %chipmunk:y) pos %chipmunk:vect)
                (setf %chipmunk:x 0f0)
                (setf %chipmunk:y 15f0))
              (%chipmunk:body-set-position ball-body pos))
            ;; Now we create the collision shape for the ball.
            ;; You can create multiple collision shapes that point to the same body.
            ;; They will all be attached to the body and move around to follow it.
            (let ((ball-shape (%chipmunk:space-add-shape space
                                                   (%chipmunk:circle-shape-new ball-body
                                                                         radius
                                                                         chipmunk:+vzero+))))
              (%chipmunk:shape-set-friction ball-shape 0.7f0)
              ;; Now that it's all set up, we simulate all the objects in the space by
              ;; stepping forward through time in small increments called steps.
              ;; It is *highly* recommended to use a fixed size time step.
              (let ((time-step (float 1/60 0f0)))
                (loop for time = 0 then (incf time time-step) while (< time 2)
                      do (cffi:with-foreign-objects ((pos '%chipmunk:vect)
                                                     (vel '%chipmunk:vect))
                           (%chipmunk:body-get-position pos ball-body)
                           (%chipmunk:body-get-velocity vel ball-body)
                           (let (pos-x pos-y vel-x vel-y)
                             (cffi:with-foreign-slots ((%chipmunk:x %chipmunk:y) pos %chipmunk:vect)
                               (setf pos-x %chipmunk:x
                                     pos-y %chipmunk:y))
                             (cffi:with-foreign-slots ((%chipmunk:x %chipmunk:y) vel %chipmunk:vect)
                               (setf vel-x %chipmunk:x
                                     vel-y %chipmunk:y))
                             (format t "Time is ~5,2F. ball-body is at (~5,2F ~5,2F)). It's velocity is (~5,2F, ~5,2F)~&"
                                     time pos-x pos-y vel-x vel-y))
                           (%chipmunk:space-step space time-step))))
              ;; Clean up our objects and exit!
              (%chipmunk:shape-free ball-shape)
              (%chipmunk:body-free ball-body)
              (%chipmunk:shape-free ground)
              (%chipmunk:space-free space))))))))

(cl:in-package :chipmunk.example)

(defun run ()
  ;; C code loves to throw around float interrupts around
  ;; but we don't like them to pop out in our world
  (float-features:with-float-traps-masked t
    (main)))
