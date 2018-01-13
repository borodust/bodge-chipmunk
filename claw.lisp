(claw:c-include "bodge_chipmunk.h" bodge-chipmunk
  :package :%cp
  :include-sources ("bodge_chipmunk.h")
  :exclude-sources ("chipmunk_private\\.h$")
  :include-definitions ("(cp|CP_)\\w*")
  :symbol-prefix ("cp" "CP_"))
