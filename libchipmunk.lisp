(in-package :bodge-chipmunk)


(cffi:define-foreign-library libchipmunk
  (:darwin (:or "libchipmunk.7.dylib" "libchipmunk.dylib"))
  (:unix (:or "libchipmunk.so.7" "libchipmunk.so"))
  (:windows "libchipmunk.dll"))


(cffi:use-foreign-library libchipmunk)
