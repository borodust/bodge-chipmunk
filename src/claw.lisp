(claw:defwrapper (:bodge-chipmunk
                  (:system :bodge-chipmunk/wrapper)
                  (:headers "bodge_chipmunk.h")
                  (:includes "src/" :chipmunk-includes)
                  (:include-definitions "^(cp|CP_)\\w*")
                  (:exclude-sources "chipmunk_private\\.h$")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu"))
                  (:persistent t
                   :depends-on (:claw-utils)))
  :in-package :%chipmunk
  :trim-enum-prefix t
  :with-adapter (:static
                 :path "src/lib/adapter.c")
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:by-removing-prefixes "cp" "CP_"))
