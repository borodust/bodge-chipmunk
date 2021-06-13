(cl:in-package :chipmunk)

(declaim (inline v))
(defun v (x y)
  "Allocates foreign memory for chipmunk vector. Manual memory freeing required."
  (declare (type single-float x y))
  (c-let ((vec %chipmunk:vect :alloc t))
    (setf (vec :x) x
          (vec :y) y)
    (vec &)))


(defvar +vzero+ (v 0f0 0f0))
