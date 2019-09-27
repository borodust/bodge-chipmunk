(asdf:defsystem :bodge-chipmunk
  :description "Wrapper over chipmunk 2d physics library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :claw :claw-utils :cffi-c-ref)
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:static-file "bodge_chipmunk.h")
               (:file "claw")
               (:file "chipmunk")
               (:module spec)
               (:module chipmunk-lib :pathname "lib/chipmunk/")
               (:module chipmunk-includes :pathname "lib/chipmunk/include/")))


(asdf:defsystem :bodge-chipmunk/example
  :description "Example for bodge-chipmunk"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:bodge-chipmunk)
  :pathname "example/"
  :serial t
  :components ((:file "example")))
