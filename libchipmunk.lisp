(cffi:define-foreign-library (libchipmunk
                              :search-path (asdf:system-relative-pathname :bodge-chipmunk "lib/"))
  (:darwin "libchipmunk.dylib.bodged")
  (:unix "libchipmunk.so.bodged")
  (:windows "libchipmunk.dll"))


(cffi:use-foreign-library libchipmunk)
