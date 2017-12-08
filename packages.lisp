(cl:defpackage :%chipmunk
  (:nicknames :%cp)
  (:use))


(cl:defpackage :bodge-chipmunk
  (:nicknames :cp)
  (:use :cl :bodge-autowrap :bodge-plus-c :alexandria)
  (:export))
