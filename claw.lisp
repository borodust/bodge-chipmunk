(claw:c-include "bodge_chipmunk.h" bodge-chipmunk
  :in-package :%cp
  :sysincludes (:chipmunk-includes)
  :exclude-sources ("chipmunk_private\\.h$")
  :include-definitions ("(cp|CP_)\\w*")
  :rename-symbols (claw:by-removing-prefixes "cp" "CP_"))
