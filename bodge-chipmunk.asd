(asdf:defsystem bodge-chipmunk
  :description "Wrapper over chipmunk 2d physics library"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi bodge-autowrap bodge-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libchipmunk")
               (:static-file "bodge_chipmunk.h")
               (:file "autowrap")
               (:file "chipmunk")
               (:module spec)))
