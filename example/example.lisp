(cl:defpackage :chipmunk-example
  (:use :cl :claw)
  (:export main))
(cl:in-package :chipmunk-example)

(cl:in-package :chipmunk-example)

(defun main ()
  (float-features:with-float-traps-masked t
    ;; cpVect is a 2D vector and cpv() is a shortcut for initializing them.
    (cffi:with-foreign-object (gravity '%cp:vect)
      (cffi:with-foreign-slots ((%cp:x %cp:y) gravity %cp:vect)
        (setf %cp:x 0d0)
        (setf %cp:y -100d0))
      ;; Create an empty space.
      (let ((space (%cp:space-new)))
        (%cp:space-set-gravity space gravity)
        ;; Add a static line segment shape for the ground.
        ;; We'll make it slightly tilted so the ball will roll off.
        ;; We attach it to a static body to tell Chipmunk it shouldn't be movable.
        (cffi:with-foreign-objects ((a '%cp:vect)
                                    (b '%cp:vect))
          (cffi:with-foreign-slots ((%cp:x %cp:y) a %cp:vect)
            (setf %cp:x -20d0)
            (setf %cp:y 5d0))
          (cffi:with-foreign-slots ((%cp:x %cp:y) b %cp:vect)
            (setf %cp:x 20d0)
            (setf %cp:y -5d0))
          (let ((ground (%cp:segment-shape-new (%cp:space-get-static-body space)
                                               a b 0d0)))
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
              (cffi:with-foreign-object (pos '%chipmunk:vect)
                (cffi:with-foreign-slots ((%cp:x %cp:y) pos %cp:vect)
                  (setf %cp:x 0d0)
                  (setf %cp:y 15d0))
                (%cp:body-set-position ball-body pos))
              ;; Now we create the collision shape for the ball.
              ;; You can create multiple collision shapes that point to the same body.
              ;; They will all be attached to the body and move around to follow it.
              (let ((ball-shape (%cp:space-add-shape space
                                                     (%cp:circle-shape-new ball-body
                                                                           radius
                                                                           cp:+vzero+))))
                (%cp:shape-set-friction ball-shape 0.7d0)
                ;; Now that it's all set up, we simulate all the objects in the space by
                ;; stepping forward through time in small increments called steps.
                ;; It is *highly* recommended to use a fixed size time step.
                (let ((time-step (float 1/60 0d0)))
                  (loop for time = 0 then (incf time time-step) while (< time 2)
                        do (cffi:with-foreign-objects ((pos '%cp:vect)
                                                       (vel '%cp:vect))
                             (%cp:body-get-position pos ball-body)
                             (%cp:body-get-velocity vel ball-body)
                             (let (pos-x pos-y vel-x vel-y)
                               (cffi:with-foreign-slots ((%cp:x %cp:y) pos %cp:vect)
                                 (setf pos-x %cp:x
                                       pos-y %cp:y))
                               (cffi:with-foreign-slots ((%cp:x %cp:y) vel %cp:vect)
                                 (setf vel-x %cp:x
                                       vel-y %cp:y))
                               (format t "Time is ~5,2F. ball-body is at (~5,2F ~5,2F)). It's velocity is (~5,2F, ~5,2F)~&"
                                       time pos-x pos-y vel-x vel-y))
                             (%cp:space-step space time-step))))
                ;; Clean up our objects and exit!
                (%cp:shape-free ball-shape)
                (%cp:body-free ball-body)
                (%cp:shape-free ground)
                (%cp:space-free space)))))))))
