(cl:defpackage :chipmunk
  (:nicknames :cp)
  (:use :cl :claw :alexandria :cffi-c-ref)
  (:export #:libchipmunk
           #:+vzero+
           #:v))
