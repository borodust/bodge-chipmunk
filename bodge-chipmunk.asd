(asdf:defsystem bodge-chipmunk
  :description "Wrapper over chipmunk 2d physics library"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi claw)
  :serial t
  :components ((:file "packages")
               (:file "libchipmunk")
               (:static-file "bodge_chipmunk.h")
               (:file "claw")
               (:file "chipmunk")
               (:module spec)))