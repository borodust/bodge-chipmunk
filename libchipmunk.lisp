(cffi:define-foreign-library (cp:libchipmunk
                              :search-path (asdf:system-relative-pathname :bodge-chipmunk "lib/"))
  (:darwin "libchipmunk.dylib.bodged")
  (:unix "libchipmunk.so.bodged")
  (:windows "libchipmunk.dll.bodged"))
