(asdf:defsystem :bodge-chipmunk
  :description "Wrapper over chipmunk 2d physics library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :bodge-chipmunk-bindings)
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:file "chipmunk")))


(asdf:defsystem :bodge-chipmunk/wrapper
  :description "Wrapper over chipmunk 2d physics library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :claw :claw-utils :cffi-c-ref)
  :serial t
  :components ((:file "src/claw")
               (:module :chipmunk-includes :pathname "src/lib/chipmunk/include/")))


(asdf:defsystem :bodge-chipmunk/example
  :description "Example for bodge-chipmunk"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:float-features :chipmunk-blob :bodge-chipmunk)
  :pathname "example/"
  :serial t
  :components ((:file "example")))
