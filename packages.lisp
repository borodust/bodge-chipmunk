(cl:defpackage :chipmunk
  (:nicknames :%cp)
  (:use))

(cl:defpackage :bodge-chipmunk
  (:nicknames :cp)
  (:use :cl :claw :alexandria)
  (:export libchipmunk
           +vzero+
           v))
