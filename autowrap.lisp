(bodge-autowrap:c-include "bodge_chipmunk.h" bodge-chipmunk
 :package :%chipmunk
 :include-definitions ("(cp|CP_)\\w*")
 :symbol-prefix ("cp" "CP_"))
