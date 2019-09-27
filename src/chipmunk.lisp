(cl:in-package :chipmunk)

(declaim (inline v))
(defun v (x y)
  "Allocates foreign memory for chipmunk vector. Manual memory freeing required."
  (declare (type double-float x y))
  (c-let ((vec %cp:vect :alloc t))
    (setf (vec :x) x
          (vec :y) y)
    (vec &)))


(defvar +vzero+ (v 0d0 0d0))
