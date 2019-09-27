(uiop:define-package :%chipmunk
  (:nicknames :%cp)
  (:use))


(claw:defwrapper (chipmunk::bodge-chipmunk
                  (:includes :chipmunk-includes)
                  (:include-definitions "^(cp|CP_)\\w*")
                  (:exclude-sources "chipmunk_private\\.h$"))
  :in-package :%chipmunk
  :trim-enum-prefix t
  :with-adapter (:static '(:chipmunk-lib "../adapter.c"))
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:by-removing-prefixes "cp" "CP_"))
