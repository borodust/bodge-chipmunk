(cl:in-package :chipmunk)

(declaim (inline v))
(defun v (x y)
  "Allocates foreign memory for chipmunk vector. Manual memory freeing required."
  (declare (type double-float x y))
  (let ((vec (claw:alloc '%cp:vect)))
    (c-val ((vec %cp:vect))
      (setf (vec :x) x
            (vec :y) y))
    vec))


(defvar +vzero+ (v 0d0 0d0))
