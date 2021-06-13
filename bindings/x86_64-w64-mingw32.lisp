(uiop:define-package :%chipmunk (:use))
(uiop:define-package :bodge-chipmunk-bindings~pristine (:use :cl))
(common-lisp:in-package :bodge-chipmunk-bindings~pristine)

(defparameter %chipmunk::+shape-filter-all+ nil)

(defparameter %chipmunk::+shape-filter-none+ nil)

(defparameter %chipmunk::+all-categories+ 4294967295)

(defparameter %chipmunk::+buffer-bytes+ 32768)

(defparameter %chipmunk::+export+ nil)

(defparameter %chipmunk::+max-contacts-per-arbiter+ 2)

(defparameter %chipmunk::+no-group+ 0)

(defparameter %chipmunk::+pi+ 3.1415927410125732D0)

(defparameter %chipmunk::+use-cgtypes+ 0)

(defparameter %chipmunk::+use-doubles+ 0)

(defparameter %chipmunk::+version-major+ 7)

(defparameter %chipmunk::+version-minor+ 0)

(defparameter %chipmunk::+version-release+ 3)

(defparameter %chipmunk::+wildcard-collision-type+ 4294967295)

(defparameter %chipmunk::+false+ 0)

(defparameter %chipmunk::+true+ 1)

(defparameter %chipmunk::+calloc+ nil)

(defparameter %chipmunk::+facos+ nil)

(defparameter %chipmunk::+fatan2+ nil)

(defparameter %chipmunk::+fceil+ nil)

(defparameter %chipmunk::+fcos+ nil)

(defparameter %chipmunk::+fexp+ nil)

(defparameter %chipmunk::+ffloor+ nil)

(defparameter %chipmunk::+fmod+ nil)

(defparameter %chipmunk::+fpow+ nil)

(defparameter %chipmunk::+free+ nil)

(defparameter %chipmunk::+fsin+ nil)

(defparameter %chipmunk::+fsqrt+ nil)

(defparameter %chipmunk::+realloc+ nil)

(cffi:defcenum (%chipmunk::body-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-chipmunk/src/lib/chipmunk/include/chipmunk/cpBody.h:28:14"
               (:dynamic 0)
               (:kinematic 1)
               (:static 2))

(cffi:defbitfield (%chipmunk::space-debug-draw-flags :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-chipmunk/src/lib/chipmunk/include/chipmunk/cpSpace.h:280:14"
                  (:shapes 1)
                  (:constraints 2)
                  (:collision-points 4))

(defparameter %chipmunk::+fp-nan+ 0)

(defparameter %chipmunk::+fp-infinite+ 1)

(defparameter %chipmunk::+fp-zero+ 2)

(defparameter %chipmunk::+fp-subnormal+ 3)

(defparameter %chipmunk::+fp-normal+ 4)

(cffi:defctype %chipmunk::bool :unsigned-char)

(cffi:defcstruct (%chipmunk::arbiter :size 0))

(cffi:defctype %chipmunk::arbiter (:struct %chipmunk::arbiter))

(cffi:defcstruct (%chipmunk::space :size 0))

(cffi:defctype %chipmunk::space (:struct %chipmunk::space))

(declaim (inline %chipmunk::arbiter-call-wildcard-begin-a))

(cffi:defcfun ("cpArbiterCallWildcardBeginA"
               %chipmunk::arbiter-call-wildcard-begin-a)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-begin-b))

(cffi:defcfun ("cpArbiterCallWildcardBeginB"
               %chipmunk::arbiter-call-wildcard-begin-b)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-post-solve-a))

(cffi:defcfun ("cpArbiterCallWildcardPostSolveA"
               %chipmunk::arbiter-call-wildcard-post-solve-a)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-post-solve-b))

(cffi:defcfun ("cpArbiterCallWildcardPostSolveB"
               %chipmunk::arbiter-call-wildcard-post-solve-b)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-pre-solve-a))

(cffi:defcfun ("cpArbiterCallWildcardPreSolveA"
               %chipmunk::arbiter-call-wildcard-pre-solve-a)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-pre-solve-b))

(cffi:defcfun ("cpArbiterCallWildcardPreSolveB"
               %chipmunk::arbiter-call-wildcard-pre-solve-b)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-separate-a))

(cffi:defcfun ("cpArbiterCallWildcardSeparateA"
               %chipmunk::arbiter-call-wildcard-separate-a)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::arbiter-call-wildcard-separate-b))

(cffi:defcfun ("cpArbiterCallWildcardSeparateB"
               %chipmunk::arbiter-call-wildcard-separate-b)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(cffi:defcstruct (%chipmunk::body :size 0))

(cffi:defctype %chipmunk::body (:struct %chipmunk::body))

(declaim (inline %chipmunk::arbiter-get-bodies))

(cffi:defcfun ("cpArbiterGetBodies" %chipmunk::arbiter-get-bodies)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::a
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer %chipmunk::body)))
              (%chipmunk::b
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer %chipmunk::body))))

(cffi:defctype %chipmunk::float :float)

(cffi:defcstruct (%chipmunk::vect :size 8)
                 (%chipmunk::x %chipmunk::float :offset 0)
                 (%chipmunk::y %chipmunk::float :offset 4))

(cffi:defctype %chipmunk::vect (:struct %chipmunk::vect))

(cffi:defcstruct (%chipmunk::contact-point-set :size 52)
                 (%chipmunk::count :int :offset 0)
                 (%chipmunk::normal %chipmunk::vect :offset 4))

(cffi:defctype %chipmunk::contact-point-set
               (:struct %chipmunk::contact-point-set))

(declaim (inline %chipmunk::arbiter-get-contact-point-set))

(cffi:defcfun ("__claw_cpArbiterGetContactPointSet"
               %chipmunk::arbiter-get-contact-point-set)
              (claw-utils:claw-pointer %chipmunk::contact-point-set)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer
                %chipmunk::contact-point-set))
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-get-count))

(cffi:defcfun ("cpArbiterGetCount" %chipmunk::arbiter-get-count)
              :int
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-get-depth))

(cffi:defcfun ("cpArbiterGetDepth" %chipmunk::arbiter-get-depth)
              %chipmunk::float
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::i :int))

(declaim (inline %chipmunk::arbiter-get-friction))

(cffi:defcfun ("cpArbiterGetFriction"
               %chipmunk::arbiter-get-friction)
              %chipmunk::float
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-get-normal))

(cffi:defcfun ("__claw_cpArbiterGetNormal"
               %chipmunk::arbiter-get-normal)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-get-point-a))

(cffi:defcfun ("__claw_cpArbiterGetPointA"
               %chipmunk::arbiter-get-point-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::i :int))

(declaim (inline %chipmunk::arbiter-get-point-b))

(cffi:defcfun ("__claw_cpArbiterGetPointB"
               %chipmunk::arbiter-get-point-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::i :int))

(declaim (inline %chipmunk::arbiter-get-restitution))

(cffi:defcfun ("cpArbiterGetRestitution"
               %chipmunk::arbiter-get-restitution)
              %chipmunk::float
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(cffi:defcstruct (%chipmunk::shape :size 0))

(cffi:defctype %chipmunk::shape (:struct %chipmunk::shape))

(declaim (inline %chipmunk::arbiter-get-shapes))

(cffi:defcfun ("cpArbiterGetShapes" %chipmunk::arbiter-get-shapes)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::a
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer %chipmunk::shape)))
              (%chipmunk::b
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer %chipmunk::shape))))

(declaim (inline %chipmunk::arbiter-get-surface-velocity))

(cffi:defcfun ("__claw_cpArbiterGetSurfaceVelocity"
               %chipmunk::arbiter-get-surface-velocity)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(cffi:defctype %chipmunk::data-pointer
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::arbiter-get-user-data))

(cffi:defcfun ("cpArbiterGetUserData"
               %chipmunk::arbiter-get-user-data)
              %chipmunk::data-pointer
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-ignore))

(cffi:defcfun ("cpArbiterIgnore" %chipmunk::arbiter-ignore)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-is-first-contact))

(cffi:defcfun ("cpArbiterIsFirstContact"
               %chipmunk::arbiter-is-first-contact)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-is-removal))

(cffi:defcfun ("cpArbiterIsRemoval" %chipmunk::arbiter-is-removal)
              %chipmunk::bool
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-set-contact-point-set))

(cffi:defcfun ("cpArbiterSetContactPointSet"
               %chipmunk::arbiter-set-contact-point-set)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::set
               (claw-utils:claw-pointer
                %chipmunk::contact-point-set)))

(declaim (inline %chipmunk::arbiter-set-friction))

(cffi:defcfun ("cpArbiterSetFriction"
               %chipmunk::arbiter-set-friction)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::friction %chipmunk::float))

(declaim (inline %chipmunk::arbiter-set-restitution))

(cffi:defcfun ("cpArbiterSetRestitution"
               %chipmunk::arbiter-set-restitution)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::restitution %chipmunk::float))

(declaim (inline %chipmunk::arbiter-set-surface-velocity))

(cffi:defcfun ("__claw_cpArbiterSetSurfaceVelocity"
               %chipmunk::arbiter-set-surface-velocity)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::vr
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::arbiter-set-user-data))

(cffi:defcfun ("cpArbiterSetUserData"
               %chipmunk::arbiter-set-user-data)
              :void
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter))
              (%chipmunk::user-data %chipmunk::data-pointer))

(declaim (inline %chipmunk::arbiter-total-impulse))

(cffi:defcfun ("__claw_cpArbiterTotalImpulse"
               %chipmunk::arbiter-total-impulse)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::arbiter-total-ke))

(cffi:defcfun ("cpArbiterTotalKE" %chipmunk::arbiter-total-ke)
              %chipmunk::float
              (%chipmunk::arb
               (claw-utils:claw-pointer %chipmunk::arbiter)))

(declaim (inline %chipmunk::area-for-circle))

(cffi:defcfun ("cpAreaForCircle" %chipmunk::area-for-circle)
              %chipmunk::float
              (%chipmunk::r1 %chipmunk::float)
              (%chipmunk::r2 %chipmunk::float))

(declaim (inline %chipmunk::area-for-poly))

(cffi:defcfun ("cpAreaForPoly" %chipmunk::area-for-poly)
              %chipmunk::float
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::area-for-segment))

(cffi:defcfun ("__claw_cpAreaForSegment" %chipmunk::area-for-segment)
              %chipmunk::float
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(cffi:defcstruct (%chipmunk::bb-tree :size 0))

(cffi:defctype %chipmunk::bb-tree (:struct %chipmunk::bb-tree))

(declaim (inline %chipmunk::bb-tree-alloc))

(cffi:defcfun ("cpBBTreeAlloc" %chipmunk::bb-tree-alloc)
              (claw-utils:claw-pointer %chipmunk::bb-tree))

(cffi:defctype %chipmunk::spatial-index-bb-func
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-destroy-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-count-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-each-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-contains-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-insert-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-remove-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-reindex-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-reindex-object-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-reindex-query-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-query-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::spatial-index-segment-query-impl
               (claw-utils:claw-pointer :void))

(cffi:defcstruct (%chipmunk::spatial-index-class :size 88)
                 (%chipmunk::destroy
                  %chipmunk::spatial-index-destroy-impl :offset 0)
                 (%chipmunk::count
                  %chipmunk::spatial-index-count-impl :offset 8)
                 (%chipmunk::each %chipmunk::spatial-index-each-impl
                  :offset 16)
                 (%chipmunk::contains
                  %chipmunk::spatial-index-contains-impl :offset 24)
                 (%chipmunk::insert
                  %chipmunk::spatial-index-insert-impl :offset 32)
                 (%chipmunk::remove
                  %chipmunk::spatial-index-remove-impl :offset 40)
                 (%chipmunk::reindex
                  %chipmunk::spatial-index-reindex-impl :offset 48)
                 (%chipmunk::reindex-object
                  %chipmunk::spatial-index-reindex-object-impl
                  :offset 56)
                 (%chipmunk::reindex-query
                  %chipmunk::spatial-index-reindex-query-impl :offset
                  64)
                 (%chipmunk::query
                  %chipmunk::spatial-index-query-impl :offset 72)
                 (%chipmunk::segment-query
                  %chipmunk::spatial-index-segment-query-impl :offset
                  80))

(cffi:defctype %chipmunk::spatial-index-class
               (:struct %chipmunk::spatial-index-class))

(cffi:defcstruct (%chipmunk::spatial-index :size 32))

(cffi:defctype %chipmunk::spatial-index
               (:struct %chipmunk::spatial-index))

(cffi:defcstruct (%chipmunk::spatial-index :size 32)
                 (%chipmunk::klass
                  (claw-utils:claw-pointer
                   %chipmunk::spatial-index-class)
                  :offset 0)
                 (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func
                  :offset 8)
                 (%chipmunk::static-index
                  (claw-utils:claw-pointer %chipmunk::spatial-index)
                  :offset 16)
                 (%chipmunk::dynamic-index
                  (claw-utils:claw-pointer %chipmunk::spatial-index)
                  :offset 24))

(cffi:defctype %chipmunk::spatial-index
               (:struct %chipmunk::spatial-index))

(declaim (inline %chipmunk::bb-tree-init))

(cffi:defcfun ("cpBBTreeInit" %chipmunk::bb-tree-init)
              (claw-utils:claw-pointer %chipmunk::spatial-index)
              (%chipmunk::tree
               (claw-utils:claw-pointer %chipmunk::bb-tree))
              (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func)
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::bb-tree-new))

(cffi:defcfun ("cpBBTreeNew" %chipmunk::bb-tree-new)
              (claw-utils:claw-pointer %chipmunk::spatial-index)
              (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func)
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::bb-tree-optimize))

(cffi:defcfun ("cpBBTreeOptimize" %chipmunk::bb-tree-optimize)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(cffi:defctype %chipmunk::bb-tree-velocity-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::bb-tree-set-velocity-func))

(cffi:defcfun ("cpBBTreeSetVelocityFunc"
               %chipmunk::bb-tree-set-velocity-func)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::func %chipmunk::bb-tree-velocity-func))

(declaim (inline %chipmunk::body-activate))

(cffi:defcfun ("cpBodyActivate" %chipmunk::body-activate)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-activate-static))

(cffi:defcfun ("cpBodyActivateStatic"
               %chipmunk::body-activate-static)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::body-alloc))

(cffi:defcfun ("cpBodyAlloc" %chipmunk::body-alloc)
              (claw-utils:claw-pointer %chipmunk::body))

(declaim (inline %chipmunk::body-apply-force-at-local-point))

(cffi:defcfun ("__claw_cpBodyApplyForceAtLocalPoint"
               %chipmunk::body-apply-force-at-local-point)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::force
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-apply-force-at-world-point))

(cffi:defcfun ("__claw_cpBodyApplyForceAtWorldPoint"
               %chipmunk::body-apply-force-at-world-point)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::force
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-apply-impulse-at-local-point))

(cffi:defcfun ("__claw_cpBodyApplyImpulseAtLocalPoint"
               %chipmunk::body-apply-impulse-at-local-point)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::impulse
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-apply-impulse-at-world-point))

(cffi:defcfun ("__claw_cpBodyApplyImpulseAtWorldPoint"
               %chipmunk::body-apply-impulse-at-world-point)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::impulse
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-destroy))

(cffi:defcfun ("cpBodyDestroy" %chipmunk::body-destroy)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(cffi:defctype %chipmunk::body-arbiter-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::body-each-arbiter))

(cffi:defcfun ("cpBodyEachArbiter" %chipmunk::body-each-arbiter)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::func %chipmunk::body-arbiter-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(cffi:defctype %chipmunk::body-constraint-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::body-each-constraint))

(cffi:defcfun ("cpBodyEachConstraint"
               %chipmunk::body-each-constraint)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::func
               %chipmunk::body-constraint-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(cffi:defctype %chipmunk::body-shape-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::body-each-shape))

(cffi:defcfun ("cpBodyEachShape" %chipmunk::body-each-shape)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::func %chipmunk::body-shape-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::body-free))

(cffi:defcfun ("cpBodyFree" %chipmunk::body-free)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-angle))

(cffi:defcfun ("cpBodyGetAngle" %chipmunk::body-get-angle)
              %chipmunk::float
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-angular-velocity))

(cffi:defcfun ("cpBodyGetAngularVelocity"
               %chipmunk::body-get-angular-velocity)
              %chipmunk::float
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-center-of-gravity))

(cffi:defcfun ("__claw_cpBodyGetCenterOfGravity"
               %chipmunk::body-get-center-of-gravity)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-force))

(cffi:defcfun ("__claw_cpBodyGetForce" %chipmunk::body-get-force)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-mass))

(cffi:defcfun ("cpBodyGetMass" %chipmunk::body-get-mass)
              %chipmunk::float
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-moment))

(cffi:defcfun ("cpBodyGetMoment" %chipmunk::body-get-moment)
              %chipmunk::float
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-position))

(cffi:defcfun ("__claw_cpBodyGetPosition"
               %chipmunk::body-get-position)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-rotation))

(cffi:defcfun ("__claw_cpBodyGetRotation"
               %chipmunk::body-get-rotation)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-space))

(cffi:defcfun ("cpBodyGetSpace" %chipmunk::body-get-space)
              (claw-utils:claw-pointer %chipmunk::space)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-torque))

(cffi:defcfun ("cpBodyGetTorque" %chipmunk::body-get-torque)
              %chipmunk::float
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(cffi:defctype %chipmunk::body-type %chipmunk::body-type)

(declaim (inline %chipmunk::body-get-type))

(cffi:defcfun ("cpBodyGetType" %chipmunk::body-get-type)
              %chipmunk::body-type
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-user-data))

(cffi:defcfun ("cpBodyGetUserData" %chipmunk::body-get-user-data)
              %chipmunk::data-pointer
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-velocity))

(cffi:defcfun ("__claw_cpBodyGetVelocity"
               %chipmunk::body-get-velocity)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-get-velocity-at-local-point))

(cffi:defcfun ("__claw_cpBodyGetVelocityAtLocalPoint"
               %chipmunk::body-get-velocity-at-local-point)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-get-velocity-at-world-point))

(cffi:defcfun ("__claw_cpBodyGetVelocityAtWorldPoint"
               %chipmunk::body-get-velocity-at-world-point)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-init))

(cffi:defcfun ("cpBodyInit" %chipmunk::body-init)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::mass %chipmunk::float)
              (%chipmunk::moment %chipmunk::float))

(declaim (inline %chipmunk::body-is-sleeping))

(cffi:defcfun ("cpBodyIsSleeping" %chipmunk::body-is-sleeping)
              %chipmunk::bool
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-kinetic-energy))

(cffi:defcfun ("cpBodyKineticEnergy" %chipmunk::body-kinetic-energy)
              %chipmunk::float
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-local-to-world))

(cffi:defcfun ("__claw_cpBodyLocalToWorld"
               %chipmunk::body-local-to-world)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-new))

(cffi:defcfun ("cpBodyNew" %chipmunk::body-new)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::mass %chipmunk::float)
              (%chipmunk::moment %chipmunk::float))

(declaim (inline %chipmunk::body-new-kinematic))

(cffi:defcfun ("cpBodyNewKinematic" %chipmunk::body-new-kinematic)
              (claw-utils:claw-pointer %chipmunk::body))

(declaim (inline %chipmunk::body-new-static))

(cffi:defcfun ("cpBodyNewStatic" %chipmunk::body-new-static)
              (claw-utils:claw-pointer %chipmunk::body))

(declaim (inline %chipmunk::body-set-angle))

(cffi:defcfun ("cpBodySetAngle" %chipmunk::body-set-angle)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::a %chipmunk::float))

(declaim (inline %chipmunk::body-set-angular-velocity))

(cffi:defcfun ("cpBodySetAngularVelocity"
               %chipmunk::body-set-angular-velocity)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::angular-velocity %chipmunk::float))

(declaim (inline %chipmunk::body-set-center-of-gravity))

(cffi:defcfun ("__claw_cpBodySetCenterOfGravity"
               %chipmunk::body-set-center-of-gravity)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::cog
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-set-force))

(cffi:defcfun ("__claw_cpBodySetForce" %chipmunk::body-set-force)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::force
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::body-set-mass))

(cffi:defcfun ("cpBodySetMass" %chipmunk::body-set-mass)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::m %chipmunk::float))

(declaim (inline %chipmunk::body-set-moment))

(cffi:defcfun ("cpBodySetMoment" %chipmunk::body-set-moment)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::i %chipmunk::float))

(declaim (inline %chipmunk::body-set-position))

(cffi:defcfun ("__claw_cpBodySetPosition"
               %chipmunk::body-set-position)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::pos
               (claw-utils:claw-pointer %chipmunk::vect)))

(cffi:defctype %chipmunk::body-position-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::body-set-position-update-func))

(cffi:defcfun ("cpBodySetPositionUpdateFunc"
               %chipmunk::body-set-position-update-func)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::position-func
               %chipmunk::body-position-func))

(declaim (inline %chipmunk::body-set-torque))

(cffi:defcfun ("cpBodySetTorque" %chipmunk::body-set-torque)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::torque %chipmunk::float))

(declaim (inline %chipmunk::body-set-type))

(cffi:defcfun ("cpBodySetType" %chipmunk::body-set-type)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::type %chipmunk::body-type))

(declaim (inline %chipmunk::body-set-user-data))

(cffi:defcfun ("cpBodySetUserData" %chipmunk::body-set-user-data)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::user-data %chipmunk::data-pointer))

(declaim (inline %chipmunk::body-set-velocity))

(cffi:defcfun ("__claw_cpBodySetVelocity"
               %chipmunk::body-set-velocity)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::velocity
               (claw-utils:claw-pointer %chipmunk::vect)))

(cffi:defctype %chipmunk::body-velocity-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::body-set-velocity-update-func))

(cffi:defcfun ("cpBodySetVelocityUpdateFunc"
               %chipmunk::body-set-velocity-update-func)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::velocity-func
               %chipmunk::body-velocity-func))

(declaim (inline %chipmunk::body-sleep))

(cffi:defcfun ("cpBodySleep" %chipmunk::body-sleep)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-sleep-with-group))

(cffi:defcfun ("cpBodySleepWithGroup"
               %chipmunk::body-sleep-with-group)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::group
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::body-update-position))

(cffi:defcfun ("cpBodyUpdatePosition"
               %chipmunk::body-update-position)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::dt %chipmunk::float))

(declaim (inline %chipmunk::body-update-velocity))

(cffi:defcfun ("__claw_cpBodyUpdateVelocity"
               %chipmunk::body-update-velocity)
              :void
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::gravity
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::damping %chipmunk::float)
              (%chipmunk::dt %chipmunk::float))

(declaim (inline %chipmunk::body-world-to-local))

(cffi:defcfun ("__claw_cpBodyWorldToLocal"
               %chipmunk::body-world-to-local)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect)))

(cffi:defcstruct (%chipmunk::poly-shape :size 0))

(cffi:defctype %chipmunk::poly-shape (:struct %chipmunk::poly-shape))

(declaim (inline %chipmunk::box-shape-init))

(cffi:defcfun ("cpBoxShapeInit" %chipmunk::box-shape-init)
              (claw-utils:claw-pointer %chipmunk::poly-shape)
              (%chipmunk::poly
               (claw-utils:claw-pointer %chipmunk::poly-shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::width %chipmunk::float)
              (%chipmunk::height %chipmunk::float)
              (%chipmunk::radius %chipmunk::float))

(cffi:defcstruct (%chipmunk::bb :size 16)
                 (%chipmunk::l %chipmunk::float :offset 0)
                 (%chipmunk::b %chipmunk::float :offset 4)
                 (%chipmunk::r %chipmunk::float :offset 8)
                 (%chipmunk::t %chipmunk::float :offset 12))

(cffi:defctype %chipmunk::bb (:struct %chipmunk::bb))

(declaim (inline %chipmunk::box-shape-init2))

(cffi:defcfun ("__claw_cpBoxShapeInit2" %chipmunk::box-shape-init2)
              (claw-utils:claw-pointer %chipmunk::poly-shape)
              (%chipmunk::poly
               (claw-utils:claw-pointer %chipmunk::poly-shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::box
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::box-shape-new))

(cffi:defcfun ("cpBoxShapeNew" %chipmunk::box-shape-new)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::width %chipmunk::float)
              (%chipmunk::height %chipmunk::float)
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::box-shape-new2))

(cffi:defcfun ("__claw_cpBoxShapeNew2" %chipmunk::box-shape-new2)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::box
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::centroid-for-poly))

(cffi:defcfun ("__claw_cpCentroidForPoly"
               %chipmunk::centroid-for-poly)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect)))

(cffi:defcstruct (%chipmunk::circle-shape :size 0))

(cffi:defctype %chipmunk::circle-shape
               (:struct %chipmunk::circle-shape))

(declaim (inline %chipmunk::circle-shape-alloc))

(cffi:defcfun ("cpCircleShapeAlloc" %chipmunk::circle-shape-alloc)
              (claw-utils:claw-pointer %chipmunk::circle-shape))

(declaim (inline %chipmunk::circle-shape-get-offset))

(cffi:defcfun ("__claw_cpCircleShapeGetOffset"
               %chipmunk::circle-shape-get-offset)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::circle-shape-get-radius))

(cffi:defcfun ("cpCircleShapeGetRadius"
               %chipmunk::circle-shape-get-radius)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::circle-shape-init))

(cffi:defcfun ("__claw_cpCircleShapeInit"
               %chipmunk::circle-shape-init)
              (claw-utils:claw-pointer %chipmunk::circle-shape)
              (%chipmunk::circle
               (claw-utils:claw-pointer %chipmunk::circle-shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::radius %chipmunk::float)
              (%chipmunk::offset
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::circle-shape-new))

(cffi:defcfun ("__claw_cpCircleShapeNew" %chipmunk::circle-shape-new)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::radius %chipmunk::float)
              (%chipmunk::offset
               (claw-utils:claw-pointer %chipmunk::vect)))

(cffi:defcstruct (%chipmunk::constraint :size 0))

(cffi:defctype %chipmunk::constraint (:struct %chipmunk::constraint))

(declaim (inline %chipmunk::constraint-destroy))

(cffi:defcfun ("cpConstraintDestroy" %chipmunk::constraint-destroy)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-free))

(cffi:defcfun ("cpConstraintFree" %chipmunk::constraint-free)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-body-a))

(cffi:defcfun ("cpConstraintGetBodyA"
               %chipmunk::constraint-get-body-a)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-body-b))

(cffi:defcfun ("cpConstraintGetBodyB"
               %chipmunk::constraint-get-body-b)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-collide-bodies))

(cffi:defcfun ("cpConstraintGetCollideBodies"
               %chipmunk::constraint-get-collide-bodies)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-error-bias))

(cffi:defcfun ("cpConstraintGetErrorBias"
               %chipmunk::constraint-get-error-bias)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-impulse))

(cffi:defcfun ("cpConstraintGetImpulse"
               %chipmunk::constraint-get-impulse)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-max-bias))

(cffi:defcfun ("cpConstraintGetMaxBias"
               %chipmunk::constraint-get-max-bias)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-max-force))

(cffi:defcfun ("cpConstraintGetMaxForce"
               %chipmunk::constraint-get-max-force)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(cffi:defctype %chipmunk::constraint-post-solve-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::constraint-get-post-solve-func))

(cffi:defcfun ("cpConstraintGetPostSolveFunc"
               %chipmunk::constraint-get-post-solve-func)
              %chipmunk::constraint-post-solve-func
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(cffi:defctype %chipmunk::constraint-pre-solve-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::constraint-get-pre-solve-func))

(cffi:defcfun ("cpConstraintGetPreSolveFunc"
               %chipmunk::constraint-get-pre-solve-func)
              %chipmunk::constraint-pre-solve-func
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-space))

(cffi:defcfun ("cpConstraintGetSpace"
               %chipmunk::constraint-get-space)
              (claw-utils:claw-pointer %chipmunk::space)
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-get-user-data))

(cffi:defcfun ("cpConstraintGetUserData"
               %chipmunk::constraint-get-user-data)
              %chipmunk::data-pointer
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-damped-rotary-spring))

(cffi:defcfun ("cpConstraintIsDampedRotarySpring"
               %chipmunk::constraint-is-damped-rotary-spring)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-damped-spring))

(cffi:defcfun ("cpConstraintIsDampedSpring"
               %chipmunk::constraint-is-damped-spring)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-gear-joint))

(cffi:defcfun ("cpConstraintIsGearJoint"
               %chipmunk::constraint-is-gear-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-groove-joint))

(cffi:defcfun ("cpConstraintIsGrooveJoint"
               %chipmunk::constraint-is-groove-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-pin-joint))

(cffi:defcfun ("cpConstraintIsPinJoint"
               %chipmunk::constraint-is-pin-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-pivot-joint))

(cffi:defcfun ("cpConstraintIsPivotJoint"
               %chipmunk::constraint-is-pivot-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-ratchet-joint))

(cffi:defcfun ("cpConstraintIsRatchetJoint"
               %chipmunk::constraint-is-ratchet-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-rotary-limit-joint))

(cffi:defcfun ("cpConstraintIsRotaryLimitJoint"
               %chipmunk::constraint-is-rotary-limit-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-simple-motor))

(cffi:defcfun ("cpConstraintIsSimpleMotor"
               %chipmunk::constraint-is-simple-motor)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-is-slide-joint))

(cffi:defcfun ("cpConstraintIsSlideJoint"
               %chipmunk::constraint-is-slide-joint)
              %chipmunk::bool
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::constraint-set-collide-bodies))

(cffi:defcfun ("cpConstraintSetCollideBodies"
               %chipmunk::constraint-set-collide-bodies)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::collide-bodies %chipmunk::bool))

(declaim (inline %chipmunk::constraint-set-error-bias))

(cffi:defcfun ("cpConstraintSetErrorBias"
               %chipmunk::constraint-set-error-bias)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::error-bias %chipmunk::float))

(declaim (inline %chipmunk::constraint-set-max-bias))

(cffi:defcfun ("cpConstraintSetMaxBias"
               %chipmunk::constraint-set-max-bias)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::max-bias %chipmunk::float))

(declaim (inline %chipmunk::constraint-set-max-force))

(cffi:defcfun ("cpConstraintSetMaxForce"
               %chipmunk::constraint-set-max-force)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::max-force %chipmunk::float))

(declaim (inline %chipmunk::constraint-set-post-solve-func))

(cffi:defcfun ("cpConstraintSetPostSolveFunc"
               %chipmunk::constraint-set-post-solve-func)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::post-solve-func
               %chipmunk::constraint-post-solve-func))

(declaim (inline %chipmunk::constraint-set-pre-solve-func))

(cffi:defcfun ("cpConstraintSetPreSolveFunc"
               %chipmunk::constraint-set-pre-solve-func)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::pre-solve-func
               %chipmunk::constraint-pre-solve-func))

(declaim (inline %chipmunk::constraint-set-user-data))

(cffi:defcfun ("cpConstraintSetUserData"
               %chipmunk::constraint-set-user-data)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::user-data %chipmunk::data-pointer))

(declaim (inline %chipmunk::convex-hull))

(cffi:defcfun ("cpConvexHull" %chipmunk::convex-hull)
              :int
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::result
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::first (claw-utils:claw-pointer :int))
              (%chipmunk::tol %chipmunk::float))

(cffi:defcstruct (%chipmunk::damped-rotary-spring :size 0))

(cffi:defctype %chipmunk::damped-rotary-spring
               (:struct %chipmunk::damped-rotary-spring))

(declaim (inline %chipmunk::damped-rotary-spring-alloc))

(cffi:defcfun ("cpDampedRotarySpringAlloc"
               %chipmunk::damped-rotary-spring-alloc)
              (claw-utils:claw-pointer
               %chipmunk::damped-rotary-spring))

(declaim (inline %chipmunk::damped-rotary-spring-get-damping))

(cffi:defcfun ("cpDampedRotarySpringGetDamping"
               %chipmunk::damped-rotary-spring-get-damping)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-rotary-spring-get-rest-angle))

(cffi:defcfun ("cpDampedRotarySpringGetRestAngle"
               %chipmunk::damped-rotary-spring-get-rest-angle)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(cffi:defctype %chipmunk::damped-rotary-spring-torque-func
               (claw-utils:claw-pointer :void))

(declaim (inline
          %chipmunk::damped-rotary-spring-get-spring-torque-func))

(cffi:defcfun ("cpDampedRotarySpringGetSpringTorqueFunc"
               %chipmunk::damped-rotary-spring-get-spring-torque-func)
              %chipmunk::damped-rotary-spring-torque-func
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-rotary-spring-get-stiffness))

(cffi:defcfun ("cpDampedRotarySpringGetStiffness"
               %chipmunk::damped-rotary-spring-get-stiffness)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-rotary-spring-init))

(cffi:defcfun ("cpDampedRotarySpringInit"
               %chipmunk::damped-rotary-spring-init)
              (claw-utils:claw-pointer
               %chipmunk::damped-rotary-spring)
              (%chipmunk::joint
               (claw-utils:claw-pointer
                %chipmunk::damped-rotary-spring))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::rest-angle %chipmunk::float)
              (%chipmunk::stiffness %chipmunk::float)
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::damped-rotary-spring-new))

(cffi:defcfun ("cpDampedRotarySpringNew"
               %chipmunk::damped-rotary-spring-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::rest-angle %chipmunk::float)
              (%chipmunk::stiffness %chipmunk::float)
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::damped-rotary-spring-set-damping))

(cffi:defcfun ("cpDampedRotarySpringSetDamping"
               %chipmunk::damped-rotary-spring-set-damping)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::damped-rotary-spring-set-rest-angle))

(cffi:defcfun ("cpDampedRotarySpringSetRestAngle"
               %chipmunk::damped-rotary-spring-set-rest-angle)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::rest-angle %chipmunk::float))

(declaim (inline
          %chipmunk::damped-rotary-spring-set-spring-torque-func))

(cffi:defcfun ("cpDampedRotarySpringSetSpringTorqueFunc"
               %chipmunk::damped-rotary-spring-set-spring-torque-func)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::spring-torque-func
               %chipmunk::damped-rotary-spring-torque-func))

(declaim (inline %chipmunk::damped-rotary-spring-set-stiffness))

(cffi:defcfun ("cpDampedRotarySpringSetStiffness"
               %chipmunk::damped-rotary-spring-set-stiffness)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::stiffness %chipmunk::float))

(cffi:defcstruct (%chipmunk::damped-spring :size 0))

(cffi:defctype %chipmunk::damped-spring
               (:struct %chipmunk::damped-spring))

(declaim (inline %chipmunk::damped-spring-alloc))

(cffi:defcfun ("cpDampedSpringAlloc" %chipmunk::damped-spring-alloc)
              (claw-utils:claw-pointer %chipmunk::damped-spring))

(declaim (inline %chipmunk::damped-spring-get-anchor-a))

(cffi:defcfun ("__claw_cpDampedSpringGetAnchorA"
               %chipmunk::damped-spring-get-anchor-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-spring-get-anchor-b))

(cffi:defcfun ("__claw_cpDampedSpringGetAnchorB"
               %chipmunk::damped-spring-get-anchor-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-spring-get-damping))

(cffi:defcfun ("cpDampedSpringGetDamping"
               %chipmunk::damped-spring-get-damping)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-spring-get-rest-length))

(cffi:defcfun ("cpDampedSpringGetRestLength"
               %chipmunk::damped-spring-get-rest-length)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(cffi:defctype %chipmunk::damped-spring-force-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::damped-spring-get-spring-force-func))

(cffi:defcfun ("cpDampedSpringGetSpringForceFunc"
               %chipmunk::damped-spring-get-spring-force-func)
              %chipmunk::damped-spring-force-func
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-spring-get-stiffness))

(cffi:defcfun ("cpDampedSpringGetStiffness"
               %chipmunk::damped-spring-get-stiffness)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::damped-spring-init))

(cffi:defcfun ("__claw_cpDampedSpringInit"
               %chipmunk::damped-spring-init)
              (claw-utils:claw-pointer %chipmunk::damped-spring)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::damped-spring))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::rest-length %chipmunk::float)
              (%chipmunk::stiffness %chipmunk::float)
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::damped-spring-new))

(cffi:defcfun ("__claw_cpDampedSpringNew"
               %chipmunk::damped-spring-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::rest-length %chipmunk::float)
              (%chipmunk::stiffness %chipmunk::float)
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::damped-spring-set-anchor-a))

(cffi:defcfun ("__claw_cpDampedSpringSetAnchorA"
               %chipmunk::damped-spring-set-anchor-a)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::damped-spring-set-anchor-b))

(cffi:defcfun ("__claw_cpDampedSpringSetAnchorB"
               %chipmunk::damped-spring-set-anchor-b)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::damped-spring-set-damping))

(cffi:defcfun ("cpDampedSpringSetDamping"
               %chipmunk::damped-spring-set-damping)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::damped-spring-set-rest-length))

(cffi:defcfun ("cpDampedSpringSetRestLength"
               %chipmunk::damped-spring-set-rest-length)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::rest-length %chipmunk::float))

(declaim (inline %chipmunk::damped-spring-set-spring-force-func))

(cffi:defcfun ("cpDampedSpringSetSpringForceFunc"
               %chipmunk::damped-spring-set-spring-force-func)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::spring-force-func
               %chipmunk::damped-spring-force-func))

(declaim (inline %chipmunk::damped-spring-set-stiffness))

(cffi:defcfun ("cpDampedSpringSetStiffness"
               %chipmunk::damped-spring-set-stiffness)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::stiffness %chipmunk::float))

(cffi:defcstruct (%chipmunk::gear-joint :size 0))

(cffi:defctype %chipmunk::gear-joint (:struct %chipmunk::gear-joint))

(declaim (inline %chipmunk::gear-joint-alloc))

(cffi:defcfun ("cpGearJointAlloc" %chipmunk::gear-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::gear-joint))

(declaim (inline %chipmunk::gear-joint-get-phase))

(cffi:defcfun ("cpGearJointGetPhase" %chipmunk::gear-joint-get-phase)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::gear-joint-get-ratio))

(cffi:defcfun ("cpGearJointGetRatio" %chipmunk::gear-joint-get-ratio)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::gear-joint-init))

(cffi:defcfun ("cpGearJointInit" %chipmunk::gear-joint-init)
              (claw-utils:claw-pointer %chipmunk::gear-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::gear-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::phase %chipmunk::float)
              (%chipmunk::ratio %chipmunk::float))

(declaim (inline %chipmunk::gear-joint-new))

(cffi:defcfun ("cpGearJointNew" %chipmunk::gear-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::phase %chipmunk::float)
              (%chipmunk::ratio %chipmunk::float))

(declaim (inline %chipmunk::gear-joint-set-phase))

(cffi:defcfun ("cpGearJointSetPhase" %chipmunk::gear-joint-set-phase)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::phase %chipmunk::float))

(declaim (inline %chipmunk::gear-joint-set-ratio))

(cffi:defcfun ("cpGearJointSetRatio" %chipmunk::gear-joint-set-ratio)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::ratio %chipmunk::float))

(cffi:defcstruct (%chipmunk::groove-joint :size 0))

(cffi:defctype %chipmunk::groove-joint
               (:struct %chipmunk::groove-joint))

(declaim (inline %chipmunk::groove-joint-alloc))

(cffi:defcfun ("cpGrooveJointAlloc" %chipmunk::groove-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::groove-joint))

(declaim (inline %chipmunk::groove-joint-get-anchor-b))

(cffi:defcfun ("__claw_cpGrooveJointGetAnchorB"
               %chipmunk::groove-joint-get-anchor-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::groove-joint-get-groove-a))

(cffi:defcfun ("__claw_cpGrooveJointGetGrooveA"
               %chipmunk::groove-joint-get-groove-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::groove-joint-get-groove-b))

(cffi:defcfun ("__claw_cpGrooveJointGetGrooveB"
               %chipmunk::groove-joint-get-groove-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::groove-joint-init))

(cffi:defcfun ("__claw_cpGrooveJointInit"
               %chipmunk::groove-joint-init)
              (claw-utils:claw-pointer %chipmunk::groove-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::groove-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::groove-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::groove-b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::groove-joint-new))

(cffi:defcfun ("__claw_cpGrooveJointNew" %chipmunk::groove-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::groove-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::groove-b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::groove-joint-set-anchor-b))

(cffi:defcfun ("__claw_cpGrooveJointSetAnchorB"
               %chipmunk::groove-joint-set-anchor-b)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::groove-joint-set-groove-a))

(cffi:defcfun ("__claw_cpGrooveJointSetGrooveA"
               %chipmunk::groove-joint-set-groove-a)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::groove-a
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::groove-joint-set-groove-b))

(cffi:defcfun ("__claw_cpGrooveJointSetGrooveB"
               %chipmunk::groove-joint-set-groove-b)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::groove-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::message))

(cffi:defcfun ("cpMessage" %chipmunk::message)
              :void
              (%chipmunk::condition claw-utils:claw-string)
              (%chipmunk::file claw-utils:claw-string)
              (%chipmunk::line :int)
              (%chipmunk::is-error :int)
              (%chipmunk::is-hard-error :int)
              (%chipmunk::message claw-utils:claw-string)
              &rest)

(declaim (inline %chipmunk::moment-for-box))

(cffi:defcfun ("cpMomentForBox" %chipmunk::moment-for-box)
              %chipmunk::float
              (%chipmunk::m %chipmunk::float)
              (%chipmunk::width %chipmunk::float)
              (%chipmunk::height %chipmunk::float))

(declaim (inline %chipmunk::moment-for-box2))

(cffi:defcfun ("__claw_cpMomentForBox2" %chipmunk::moment-for-box2)
              %chipmunk::float
              (%chipmunk::m %chipmunk::float)
              (%chipmunk::box
               (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::moment-for-circle))

(cffi:defcfun ("__claw_cpMomentForCircle"
               %chipmunk::moment-for-circle)
              %chipmunk::float
              (%chipmunk::m %chipmunk::float)
              (%chipmunk::r1 %chipmunk::float)
              (%chipmunk::r2 %chipmunk::float)
              (%chipmunk::offset
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::moment-for-poly))

(cffi:defcfun ("__claw_cpMomentForPoly" %chipmunk::moment-for-poly)
              %chipmunk::float
              (%chipmunk::m %chipmunk::float)
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::offset
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::moment-for-segment))

(cffi:defcfun ("__claw_cpMomentForSegment"
               %chipmunk::moment-for-segment)
              %chipmunk::float
              (%chipmunk::m %chipmunk::float)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(cffi:defcstruct (%chipmunk::pin-joint :size 0))

(cffi:defctype %chipmunk::pin-joint (:struct %chipmunk::pin-joint))

(declaim (inline %chipmunk::pin-joint-alloc))

(cffi:defcfun ("cpPinJointAlloc" %chipmunk::pin-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::pin-joint))

(declaim (inline %chipmunk::pin-joint-get-anchor-a))

(cffi:defcfun ("__claw_cpPinJointGetAnchorA"
               %chipmunk::pin-joint-get-anchor-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::pin-joint-get-anchor-b))

(cffi:defcfun ("__claw_cpPinJointGetAnchorB"
               %chipmunk::pin-joint-get-anchor-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::pin-joint-get-dist))

(cffi:defcfun ("cpPinJointGetDist" %chipmunk::pin-joint-get-dist)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::pin-joint-init))

(cffi:defcfun ("__claw_cpPinJointInit" %chipmunk::pin-joint-init)
              (claw-utils:claw-pointer %chipmunk::pin-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::pin-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pin-joint-new))

(cffi:defcfun ("__claw_cpPinJointNew" %chipmunk::pin-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pin-joint-set-anchor-a))

(cffi:defcfun ("__claw_cpPinJointSetAnchorA"
               %chipmunk::pin-joint-set-anchor-a)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pin-joint-set-anchor-b))

(cffi:defcfun ("__claw_cpPinJointSetAnchorB"
               %chipmunk::pin-joint-set-anchor-b)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pin-joint-set-dist))

(cffi:defcfun ("cpPinJointSetDist" %chipmunk::pin-joint-set-dist)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::dist %chipmunk::float))

(cffi:defcstruct (%chipmunk::pivot-joint :size 0))

(cffi:defctype %chipmunk::pivot-joint
               (:struct %chipmunk::pivot-joint))

(declaim (inline %chipmunk::pivot-joint-alloc))

(cffi:defcfun ("cpPivotJointAlloc" %chipmunk::pivot-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::pivot-joint))

(declaim (inline %chipmunk::pivot-joint-get-anchor-a))

(cffi:defcfun ("__claw_cpPivotJointGetAnchorA"
               %chipmunk::pivot-joint-get-anchor-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::pivot-joint-get-anchor-b))

(cffi:defcfun ("__claw_cpPivotJointGetAnchorB"
               %chipmunk::pivot-joint-get-anchor-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::pivot-joint-init))

(cffi:defcfun ("__claw_cpPivotJointInit" %chipmunk::pivot-joint-init)
              (claw-utils:claw-pointer %chipmunk::pivot-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::pivot-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pivot-joint-new))

(cffi:defcfun ("__claw_cpPivotJointNew" %chipmunk::pivot-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::pivot
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pivot-joint-new2))

(cffi:defcfun ("__claw_cpPivotJointNew2" %chipmunk::pivot-joint-new2)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pivot-joint-set-anchor-a))

(cffi:defcfun ("__claw_cpPivotJointSetAnchorA"
               %chipmunk::pivot-joint-set-anchor-a)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::pivot-joint-set-anchor-b))

(cffi:defcfun ("__claw_cpPivotJointSetAnchorB"
               %chipmunk::pivot-joint-set-anchor-b)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::poly-shape-alloc))

(cffi:defcfun ("cpPolyShapeAlloc" %chipmunk::poly-shape-alloc)
              (claw-utils:claw-pointer %chipmunk::poly-shape))

(declaim (inline %chipmunk::poly-shape-get-count))

(cffi:defcfun ("cpPolyShapeGetCount" %chipmunk::poly-shape-get-count)
              :int
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::poly-shape-get-radius))

(cffi:defcfun ("cpPolyShapeGetRadius"
               %chipmunk::poly-shape-get-radius)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::poly-shape-get-vert))

(cffi:defcfun ("__claw_cpPolyShapeGetVert"
               %chipmunk::poly-shape-get-vert)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::index :int))

(cffi:defcstruct (%chipmunk::transform :size 24)
                 (%chipmunk::a %chipmunk::float :offset 0)
                 (%chipmunk::b %chipmunk::float :offset 4)
                 (%chipmunk::c %chipmunk::float :offset 8)
                 (%chipmunk::d %chipmunk::float :offset 12)
                 (%chipmunk::tx %chipmunk::float :offset 16)
                 (%chipmunk::ty %chipmunk::float :offset 20))

(cffi:defctype %chipmunk::transform (:struct %chipmunk::transform))

(declaim (inline %chipmunk::poly-shape-init))

(cffi:defcfun ("__claw_cpPolyShapeInit" %chipmunk::poly-shape-init)
              (claw-utils:claw-pointer %chipmunk::poly-shape)
              (%chipmunk::poly
               (claw-utils:claw-pointer %chipmunk::poly-shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::transform
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::poly-shape-init-raw))

(cffi:defcfun ("cpPolyShapeInitRaw" %chipmunk::poly-shape-init-raw)
              (claw-utils:claw-pointer %chipmunk::poly-shape)
              (%chipmunk::poly
               (claw-utils:claw-pointer %chipmunk::poly-shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::poly-shape-new))

(cffi:defcfun ("__claw_cpPolyShapeNew" %chipmunk::poly-shape-new)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::transform
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::poly-shape-new-raw))

(cffi:defcfun ("cpPolyShapeNewRaw" %chipmunk::poly-shape-new-raw)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::count :int)
              (%chipmunk::verts
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(cffi:defcstruct (%chipmunk::ratchet-joint :size 0))

(cffi:defctype %chipmunk::ratchet-joint
               (:struct %chipmunk::ratchet-joint))

(declaim (inline %chipmunk::ratchet-joint-alloc))

(cffi:defcfun ("cpRatchetJointAlloc" %chipmunk::ratchet-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::ratchet-joint))

(declaim (inline %chipmunk::ratchet-joint-get-angle))

(cffi:defcfun ("cpRatchetJointGetAngle"
               %chipmunk::ratchet-joint-get-angle)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::ratchet-joint-get-phase))

(cffi:defcfun ("cpRatchetJointGetPhase"
               %chipmunk::ratchet-joint-get-phase)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::ratchet-joint-get-ratchet))

(cffi:defcfun ("cpRatchetJointGetRatchet"
               %chipmunk::ratchet-joint-get-ratchet)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::ratchet-joint-init))

(cffi:defcfun ("cpRatchetJointInit" %chipmunk::ratchet-joint-init)
              (claw-utils:claw-pointer %chipmunk::ratchet-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::ratchet-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::phase %chipmunk::float)
              (%chipmunk::ratchet %chipmunk::float))

(declaim (inline %chipmunk::ratchet-joint-new))

(cffi:defcfun ("cpRatchetJointNew" %chipmunk::ratchet-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::phase %chipmunk::float)
              (%chipmunk::ratchet %chipmunk::float))

(declaim (inline %chipmunk::ratchet-joint-set-angle))

(cffi:defcfun ("cpRatchetJointSetAngle"
               %chipmunk::ratchet-joint-set-angle)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::angle %chipmunk::float))

(declaim (inline %chipmunk::ratchet-joint-set-phase))

(cffi:defcfun ("cpRatchetJointSetPhase"
               %chipmunk::ratchet-joint-set-phase)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::phase %chipmunk::float))

(declaim (inline %chipmunk::ratchet-joint-set-ratchet))

(cffi:defcfun ("cpRatchetJointSetRatchet"
               %chipmunk::ratchet-joint-set-ratchet)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::ratchet %chipmunk::float))

(cffi:defcstruct (%chipmunk::rotary-limit-joint :size 0))

(cffi:defctype %chipmunk::rotary-limit-joint
               (:struct %chipmunk::rotary-limit-joint))

(declaim (inline %chipmunk::rotary-limit-joint-alloc))

(cffi:defcfun ("cpRotaryLimitJointAlloc"
               %chipmunk::rotary-limit-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::rotary-limit-joint))

(declaim (inline %chipmunk::rotary-limit-joint-get-max))

(cffi:defcfun ("cpRotaryLimitJointGetMax"
               %chipmunk::rotary-limit-joint-get-max)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::rotary-limit-joint-get-min))

(cffi:defcfun ("cpRotaryLimitJointGetMin"
               %chipmunk::rotary-limit-joint-get-min)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::rotary-limit-joint-init))

(cffi:defcfun ("cpRotaryLimitJointInit"
               %chipmunk::rotary-limit-joint-init)
              (claw-utils:claw-pointer %chipmunk::rotary-limit-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer
                %chipmunk::rotary-limit-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::min %chipmunk::float)
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::rotary-limit-joint-new))

(cffi:defcfun ("cpRotaryLimitJointNew"
               %chipmunk::rotary-limit-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::min %chipmunk::float)
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::rotary-limit-joint-set-max))

(cffi:defcfun ("cpRotaryLimitJointSetMax"
               %chipmunk::rotary-limit-joint-set-max)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::rotary-limit-joint-set-min))

(cffi:defcfun ("cpRotaryLimitJointSetMin"
               %chipmunk::rotary-limit-joint-set-min)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::min %chipmunk::float))

(cffi:defcstruct (%chipmunk::segment-shape :size 0))

(cffi:defctype %chipmunk::segment-shape
               (:struct %chipmunk::segment-shape))

(declaim (inline %chipmunk::segment-shape-alloc))

(cffi:defcfun ("cpSegmentShapeAlloc" %chipmunk::segment-shape-alloc)
              (claw-utils:claw-pointer %chipmunk::segment-shape))

(declaim (inline %chipmunk::segment-shape-get-a))

(cffi:defcfun ("__claw_cpSegmentShapeGetA"
               %chipmunk::segment-shape-get-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::segment-shape-get-b))

(cffi:defcfun ("__claw_cpSegmentShapeGetB"
               %chipmunk::segment-shape-get-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::segment-shape-get-normal))

(cffi:defcfun ("__claw_cpSegmentShapeGetNormal"
               %chipmunk::segment-shape-get-normal)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::segment-shape-get-radius))

(cffi:defcfun ("cpSegmentShapeGetRadius"
               %chipmunk::segment-shape-get-radius)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::segment-shape-init))

(cffi:defcfun ("__claw_cpSegmentShapeInit"
               %chipmunk::segment-shape-init)
              (claw-utils:claw-pointer %chipmunk::segment-shape)
              (%chipmunk::seg
               (claw-utils:claw-pointer %chipmunk::segment-shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::segment-shape-new))

(cffi:defcfun ("__claw_cpSegmentShapeNew"
               %chipmunk::segment-shape-new)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float))

(declaim (inline %chipmunk::segment-shape-set-neighbors))

(cffi:defcfun ("__claw_cpSegmentShapeSetNeighbors"
               %chipmunk::segment-shape-set-neighbors)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::prev
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::next
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::shape-cache-bb))

(cffi:defcfun ("__claw_cpShapeCacheBB" %chipmunk::shape-cache-bb)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-destroy))

(cffi:defcfun ("cpShapeDestroy" %chipmunk::shape-destroy)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-free))

(cffi:defcfun ("cpShapeFree" %chipmunk::shape-free)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-area))

(cffi:defcfun ("cpShapeGetArea" %chipmunk::shape-get-area)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-bb))

(cffi:defcfun ("__claw_cpShapeGetBB" %chipmunk::shape-get-bb)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-body))

(cffi:defcfun ("cpShapeGetBody" %chipmunk::shape-get-body)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-center-of-gravity))

(cffi:defcfun ("__claw_cpShapeGetCenterOfGravity"
               %chipmunk::shape-get-center-of-gravity)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(cffi:defctype %chipmunk::collision-type :unsigned-long)

(declaim (inline %chipmunk::shape-get-collision-type))

(cffi:defcfun ("cpShapeGetCollisionType"
               %chipmunk::shape-get-collision-type)
              %chipmunk::collision-type
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-density))

(cffi:defcfun ("cpShapeGetDensity" %chipmunk::shape-get-density)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-elasticity))

(cffi:defcfun ("cpShapeGetElasticity"
               %chipmunk::shape-get-elasticity)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(cffi:defctype %chipmunk::group :unsigned-long)

(cffi:defctype %chipmunk::bitmask :unsigned-int)

(cffi:defcstruct (%chipmunk::shape-filter :size 12)
                 (%chipmunk::group %chipmunk::group :offset 0)
                 (%chipmunk::categories %chipmunk::bitmask :offset 4)
                 (%chipmunk::mask %chipmunk::bitmask :offset 8))

(cffi:defctype %chipmunk::shape-filter
               (:struct %chipmunk::shape-filter))

(declaim (inline %chipmunk::shape-get-filter))

(cffi:defcfun ("__claw_cpShapeGetFilter" %chipmunk::shape-get-filter)
              (claw-utils:claw-pointer %chipmunk::shape-filter)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-friction))

(cffi:defcfun ("cpShapeGetFriction" %chipmunk::shape-get-friction)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-mass))

(cffi:defcfun ("cpShapeGetMass" %chipmunk::shape-get-mass)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-moment))

(cffi:defcfun ("cpShapeGetMoment" %chipmunk::shape-get-moment)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-sensor))

(cffi:defcfun ("cpShapeGetSensor" %chipmunk::shape-get-sensor)
              %chipmunk::bool
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-space))

(cffi:defcfun ("cpShapeGetSpace" %chipmunk::shape-get-space)
              (claw-utils:claw-pointer %chipmunk::space)
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-surface-velocity))

(cffi:defcfun ("__claw_cpShapeGetSurfaceVelocity"
               %chipmunk::shape-get-surface-velocity)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::shape-get-user-data))

(cffi:defcfun ("cpShapeGetUserData" %chipmunk::shape-get-user-data)
              %chipmunk::data-pointer
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(cffi:defcstruct (%chipmunk::point-query-info :size 32)
                 (%chipmunk::shape
                  (claw-utils:claw-pointer %chipmunk::shape) :offset
                  0)
                 (%chipmunk::point %chipmunk::vect :offset 8)
                 (%chipmunk::distance %chipmunk::float :offset 16)
                 (%chipmunk::gradient %chipmunk::vect :offset 20))

(cffi:defctype %chipmunk::point-query-info
               (:struct %chipmunk::point-query-info))

(declaim (inline %chipmunk::shape-point-query))

(cffi:defcfun ("__claw_cpShapePointQuery"
               %chipmunk::shape-point-query)
              %chipmunk::float
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::p
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::out
               (claw-utils:claw-pointer %chipmunk::point-query-info)))

(cffi:defcstruct (%chipmunk::segment-query-info :size 32)
                 (%chipmunk::shape
                  (claw-utils:claw-pointer %chipmunk::shape) :offset
                  0)
                 (%chipmunk::point %chipmunk::vect :offset 8)
                 (%chipmunk::normal %chipmunk::vect :offset 16)
                 (%chipmunk::alpha %chipmunk::float :offset 24))

(cffi:defctype %chipmunk::segment-query-info
               (:struct %chipmunk::segment-query-info))

(declaim (inline %chipmunk::shape-segment-query))

(cffi:defcfun ("__claw_cpShapeSegmentQuery"
               %chipmunk::shape-segment-query)
              %chipmunk::bool
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float)
              (%chipmunk::info
               (claw-utils:claw-pointer
                %chipmunk::segment-query-info)))

(declaim (inline %chipmunk::shape-set-body))

(cffi:defcfun ("cpShapeSetBody" %chipmunk::shape-set-body)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::shape-set-collision-type))

(cffi:defcfun ("cpShapeSetCollisionType"
               %chipmunk::shape-set-collision-type)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::collision-type %chipmunk::collision-type))

(declaim (inline %chipmunk::shape-set-density))

(cffi:defcfun ("cpShapeSetDensity" %chipmunk::shape-set-density)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::density %chipmunk::float))

(declaim (inline %chipmunk::shape-set-elasticity))

(cffi:defcfun ("cpShapeSetElasticity"
               %chipmunk::shape-set-elasticity)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::elasticity %chipmunk::float))

(declaim (inline %chipmunk::shape-set-filter))

(cffi:defcfun ("__claw_cpShapeSetFilter" %chipmunk::shape-set-filter)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape-filter)))

(declaim (inline %chipmunk::shape-set-friction))

(cffi:defcfun ("cpShapeSetFriction" %chipmunk::shape-set-friction)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::friction %chipmunk::float))

(declaim (inline %chipmunk::shape-set-mass))

(cffi:defcfun ("cpShapeSetMass" %chipmunk::shape-set-mass)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::mass %chipmunk::float))

(declaim (inline %chipmunk::shape-set-sensor))

(cffi:defcfun ("cpShapeSetSensor" %chipmunk::shape-set-sensor)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::sensor %chipmunk::bool))

(declaim (inline %chipmunk::shape-set-surface-velocity))

(cffi:defcfun ("__claw_cpShapeSetSurfaceVelocity"
               %chipmunk::shape-set-surface-velocity)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::surface-velocity
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::shape-set-user-data))

(cffi:defcfun ("cpShapeSetUserData" %chipmunk::shape-set-user-data)
              :void
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::user-data %chipmunk::data-pointer))

(declaim (inline %chipmunk::shape-update))

(cffi:defcfun ("__claw_cpShapeUpdate" %chipmunk::shape-update)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::transform
               (claw-utils:claw-pointer %chipmunk::transform)))

(declaim (inline %chipmunk::shapes-collide))

(cffi:defcfun ("__claw_cpShapesCollide" %chipmunk::shapes-collide)
              (claw-utils:claw-pointer %chipmunk::contact-point-set)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer
                %chipmunk::contact-point-set))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::shape)))

(cffi:defcstruct (%chipmunk::simple-motor :size 0))

(cffi:defctype %chipmunk::simple-motor
               (:struct %chipmunk::simple-motor))

(declaim (inline %chipmunk::simple-motor-alloc))

(cffi:defcfun ("cpSimpleMotorAlloc" %chipmunk::simple-motor-alloc)
              (claw-utils:claw-pointer %chipmunk::simple-motor))

(declaim (inline %chipmunk::simple-motor-get-rate))

(cffi:defcfun ("cpSimpleMotorGetRate"
               %chipmunk::simple-motor-get-rate)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::simple-motor-init))

(cffi:defcfun ("cpSimpleMotorInit" %chipmunk::simple-motor-init)
              (claw-utils:claw-pointer %chipmunk::simple-motor)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::simple-motor))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::rate %chipmunk::float))

(declaim (inline %chipmunk::simple-motor-new))

(cffi:defcfun ("cpSimpleMotorNew" %chipmunk::simple-motor-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::rate %chipmunk::float))

(declaim (inline %chipmunk::simple-motor-set-rate))

(cffi:defcfun ("cpSimpleMotorSetRate"
               %chipmunk::simple-motor-set-rate)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::rate %chipmunk::float))

(cffi:defcstruct (%chipmunk::slide-joint :size 0))

(cffi:defctype %chipmunk::slide-joint
               (:struct %chipmunk::slide-joint))

(declaim (inline %chipmunk::slide-joint-alloc))

(cffi:defcfun ("cpSlideJointAlloc" %chipmunk::slide-joint-alloc)
              (claw-utils:claw-pointer %chipmunk::slide-joint))

(declaim (inline %chipmunk::slide-joint-get-anchor-a))

(cffi:defcfun ("__claw_cpSlideJointGetAnchorA"
               %chipmunk::slide-joint-get-anchor-a)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::slide-joint-get-anchor-b))

(cffi:defcfun ("__claw_cpSlideJointGetAnchorB"
               %chipmunk::slide-joint-get-anchor-b)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::slide-joint-get-max))

(cffi:defcfun ("cpSlideJointGetMax" %chipmunk::slide-joint-get-max)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::slide-joint-get-min))

(cffi:defcfun ("cpSlideJointGetMin" %chipmunk::slide-joint-get-min)
              %chipmunk::float
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::slide-joint-init))

(cffi:defcfun ("__claw_cpSlideJointInit" %chipmunk::slide-joint-init)
              (claw-utils:claw-pointer %chipmunk::slide-joint)
              (%chipmunk::joint
               (claw-utils:claw-pointer %chipmunk::slide-joint))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::min %chipmunk::float)
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::slide-joint-new))

(cffi:defcfun ("__claw_cpSlideJointNew" %chipmunk::slide-joint-new)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::body))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::min %chipmunk::float)
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::slide-joint-set-anchor-a))

(cffi:defcfun ("__claw_cpSlideJointSetAnchorA"
               %chipmunk::slide-joint-set-anchor-a)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-a
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::slide-joint-set-anchor-b))

(cffi:defcfun ("__claw_cpSlideJointSetAnchorB"
               %chipmunk::slide-joint-set-anchor-b)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::anchor-b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::slide-joint-set-max))

(cffi:defcfun ("cpSlideJointSetMax" %chipmunk::slide-joint-set-max)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::slide-joint-set-min))

(cffi:defcfun ("cpSlideJointSetMin" %chipmunk::slide-joint-set-min)
              :void
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint))
              (%chipmunk::min %chipmunk::float))

(declaim (inline %chipmunk::space-add-body))

(cffi:defcfun ("cpSpaceAddBody" %chipmunk::space-add-body)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(cffi:defctype %chipmunk::collision-begin-func
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::collision-pre-solve-func
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::collision-post-solve-func
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::collision-separate-func
               (claw-utils:claw-pointer :void))

(cffi:defcstruct (%chipmunk::collision-handler :size 48)
                 (%chipmunk::type-a %chipmunk::collision-type :offset
                  0)
                 (%chipmunk::type-b %chipmunk::collision-type :offset
                  4)
                 (%chipmunk::begin-func
                  %chipmunk::collision-begin-func :offset 8)
                 (%chipmunk::pre-solve-func
                  %chipmunk::collision-pre-solve-func :offset 16)
                 (%chipmunk::post-solve-func
                  %chipmunk::collision-post-solve-func :offset 24)
                 (%chipmunk::separate-func
                  %chipmunk::collision-separate-func :offset 32)
                 (%chipmunk::user-data %chipmunk::data-pointer
                  :offset 40))

(cffi:defctype %chipmunk::collision-handler
               (:struct %chipmunk::collision-handler))

(declaim (inline %chipmunk::space-add-collision-handler))

(cffi:defcfun ("cpSpaceAddCollisionHandler"
               %chipmunk::space-add-collision-handler)
              (claw-utils:claw-pointer %chipmunk::collision-handler)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::a %chipmunk::collision-type)
              (%chipmunk::b %chipmunk::collision-type))

(declaim (inline %chipmunk::space-add-constraint))

(cffi:defcfun ("cpSpaceAddConstraint"
               %chipmunk::space-add-constraint)
              (claw-utils:claw-pointer %chipmunk::constraint)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::space-add-default-collision-handler))

(cffi:defcfun ("cpSpaceAddDefaultCollisionHandler"
               %chipmunk::space-add-default-collision-handler)
              (claw-utils:claw-pointer %chipmunk::collision-handler)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(cffi:defctype %chipmunk::post-step-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-add-post-step-callback))

(cffi:defcfun ("cpSpaceAddPostStepCallback"
               %chipmunk::space-add-post-step-callback)
              %chipmunk::bool
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::func %chipmunk::post-step-func)
              (%chipmunk::key (claw-utils:claw-pointer :void))
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::space-add-shape))

(cffi:defcfun ("cpSpaceAddShape" %chipmunk::space-add-shape)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::space-add-wildcard-handler))

(cffi:defcfun ("cpSpaceAddWildcardHandler"
               %chipmunk::space-add-wildcard-handler)
              (claw-utils:claw-pointer %chipmunk::collision-handler)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::type %chipmunk::collision-type))

(declaim (inline %chipmunk::space-alloc))

(cffi:defcfun ("cpSpaceAlloc" %chipmunk::space-alloc)
              (claw-utils:claw-pointer %chipmunk::space))

(cffi:defctype %chipmunk::space-bb-query-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-bb-query))

(cffi:defcfun ("__claw_cpSpaceBBQuery" %chipmunk::space-bb-query)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::func %chipmunk::space-bb-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::space-contains-body))

(cffi:defcfun ("cpSpaceContainsBody" %chipmunk::space-contains-body)
              %chipmunk::bool
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::space-contains-constraint))

(cffi:defcfun ("cpSpaceContainsConstraint"
               %chipmunk::space-contains-constraint)
              %chipmunk::bool
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::space-contains-shape))

(cffi:defcfun ("cpSpaceContainsShape"
               %chipmunk::space-contains-shape)
              %chipmunk::bool
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(cffi:defctype %chipmunk::space-debug-draw-circle-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::space-debug-draw-segment-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::space-debug-draw-fat-segment-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::space-debug-draw-polygon-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::space-debug-draw-dot-impl
               (claw-utils:claw-pointer :void))

(cffi:defctype %chipmunk::space-debug-draw-flags
               %chipmunk::space-debug-draw-flags)

(cffi:defctype %chipmunk::space-debug-draw-color-for-shape-impl
               (claw-utils:claw-pointer :void))

(cffi:defcstruct (%chipmunk::space-debug-color :size 16)
                 (%chipmunk::r :float :offset 0)
                 (%chipmunk::g :float :offset 4)
                 (%chipmunk::b :float :offset 8)
                 (%chipmunk::a :float :offset 12))

(cffi:defctype %chipmunk::space-debug-color
               (:struct %chipmunk::space-debug-color))

(cffi:defcstruct (%chipmunk::space-debug-draw-options :size 112)
                 (%chipmunk::draw-circle
                  %chipmunk::space-debug-draw-circle-impl :offset 0)
                 (%chipmunk::draw-segment
                  %chipmunk::space-debug-draw-segment-impl :offset 8)
                 (%chipmunk::draw-fat-segment
                  %chipmunk::space-debug-draw-fat-segment-impl
                  :offset 16)
                 (%chipmunk::draw-polygon
                  %chipmunk::space-debug-draw-polygon-impl :offset
                  24)
                 (%chipmunk::draw-dot
                  %chipmunk::space-debug-draw-dot-impl :offset 32)
                 (%chipmunk::flags %chipmunk::space-debug-draw-flags
                  :offset 40)
                 (%chipmunk::shape-outline-color
                  %chipmunk::space-debug-color :offset 44)
                 (%chipmunk::color-for-shape
                  %chipmunk::space-debug-draw-color-for-shape-impl
                  :offset 64)
                 (%chipmunk::constraint-color
                  %chipmunk::space-debug-color :offset 72)
                 (%chipmunk::collision-point-color
                  %chipmunk::space-debug-color :offset 88)
                 (%chipmunk::data %chipmunk::data-pointer :offset
                  104))

(cffi:defctype %chipmunk::space-debug-draw-options
               (:struct %chipmunk::space-debug-draw-options))

(declaim (inline %chipmunk::space-debug-draw))

(cffi:defcfun ("cpSpaceDebugDraw" %chipmunk::space-debug-draw)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::options
               (claw-utils:claw-pointer
                %chipmunk::space-debug-draw-options)))

(declaim (inline %chipmunk::space-destroy))

(cffi:defcfun ("cpSpaceDestroy" %chipmunk::space-destroy)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(cffi:defctype %chipmunk::space-body-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-each-body))

(cffi:defcfun ("cpSpaceEachBody" %chipmunk::space-each-body)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::func %chipmunk::space-body-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(cffi:defctype %chipmunk::space-constraint-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-each-constraint))

(cffi:defcfun ("cpSpaceEachConstraint"
               %chipmunk::space-each-constraint)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::func
               %chipmunk::space-constraint-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(cffi:defctype %chipmunk::space-shape-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-each-shape))

(cffi:defcfun ("cpSpaceEachShape" %chipmunk::space-each-shape)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::func %chipmunk::space-shape-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::space-free))

(cffi:defcfun ("cpSpaceFree" %chipmunk::space-free)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-collision-bias))

(cffi:defcfun ("cpSpaceGetCollisionBias"
               %chipmunk::space-get-collision-bias)
              %chipmunk::float
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(cffi:defctype %chipmunk::timestamp :unsigned-int)

(declaim (inline %chipmunk::space-get-collision-persistence))

(cffi:defcfun ("cpSpaceGetCollisionPersistence"
               %chipmunk::space-get-collision-persistence)
              %chipmunk::timestamp
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-collision-slop))

(cffi:defcfun ("cpSpaceGetCollisionSlop"
               %chipmunk::space-get-collision-slop)
              %chipmunk::float
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-current-time-step))

(cffi:defcfun ("cpSpaceGetCurrentTimeStep"
               %chipmunk::space-get-current-time-step)
              %chipmunk::float
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-damping))

(cffi:defcfun ("cpSpaceGetDamping" %chipmunk::space-get-damping)
              %chipmunk::float
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-gravity))

(cffi:defcfun ("__claw_cpSpaceGetGravity"
               %chipmunk::space-get-gravity)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-idle-speed-threshold))

(cffi:defcfun ("cpSpaceGetIdleSpeedThreshold"
               %chipmunk::space-get-idle-speed-threshold)
              %chipmunk::float
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-iterations))

(cffi:defcfun ("cpSpaceGetIterations"
               %chipmunk::space-get-iterations)
              :int
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-sleep-time-threshold))

(cffi:defcfun ("cpSpaceGetSleepTimeThreshold"
               %chipmunk::space-get-sleep-time-threshold)
              %chipmunk::float
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-static-body))

(cffi:defcfun ("cpSpaceGetStaticBody"
               %chipmunk::space-get-static-body)
              (claw-utils:claw-pointer %chipmunk::body)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-get-user-data))

(cffi:defcfun ("cpSpaceGetUserData" %chipmunk::space-get-user-data)
              %chipmunk::data-pointer
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(cffi:defcstruct (%chipmunk::space-hash :size 0))

(cffi:defctype %chipmunk::space-hash (:struct %chipmunk::space-hash))

(declaim (inline %chipmunk::space-hash-alloc))

(cffi:defcfun ("cpSpaceHashAlloc" %chipmunk::space-hash-alloc)
              (claw-utils:claw-pointer %chipmunk::space-hash))

(declaim (inline %chipmunk::space-hash-init))

(cffi:defcfun ("cpSpaceHashInit" %chipmunk::space-hash-init)
              (claw-utils:claw-pointer %chipmunk::spatial-index)
              (%chipmunk::hash
               (claw-utils:claw-pointer %chipmunk::space-hash))
              (%chipmunk::celldim %chipmunk::float)
              (%chipmunk::numcells :int)
              (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func)
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::space-hash-new))

(cffi:defcfun ("cpSpaceHashNew" %chipmunk::space-hash-new)
              (claw-utils:claw-pointer %chipmunk::spatial-index)
              (%chipmunk::celldim %chipmunk::float)
              (%chipmunk::cells :int)
              (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func)
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::space-hash-resize))

(cffi:defcfun ("cpSpaceHashResize" %chipmunk::space-hash-resize)
              :void
              (%chipmunk::hash
               (claw-utils:claw-pointer %chipmunk::space-hash))
              (%chipmunk::celldim %chipmunk::float)
              (%chipmunk::numcells :int))

(declaim (inline %chipmunk::space-init))

(cffi:defcfun ("cpSpaceInit" %chipmunk::space-init)
              (claw-utils:claw-pointer %chipmunk::space)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-is-locked))

(cffi:defcfun ("cpSpaceIsLocked" %chipmunk::space-is-locked)
              %chipmunk::bool
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-new))

(cffi:defcfun ("cpSpaceNew" %chipmunk::space-new)
              (claw-utils:claw-pointer %chipmunk::space))

(cffi:defctype %chipmunk::space-point-query-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-point-query))

(cffi:defcfun ("__claw_cpSpacePointQuery"
               %chipmunk::space-point-query)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::max-distance %chipmunk::float)
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::func %chipmunk::space-point-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::space-point-query-nearest))

(cffi:defcfun ("__claw_cpSpacePointQueryNearest"
               %chipmunk::space-point-query-nearest)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::point
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::max-distance %chipmunk::float)
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::out
               (claw-utils:claw-pointer %chipmunk::point-query-info)))

(declaim (inline %chipmunk::space-reindex-shape))

(cffi:defcfun ("cpSpaceReindexShape" %chipmunk::space-reindex-shape)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(declaim (inline %chipmunk::space-reindex-shapes-for-body))

(cffi:defcfun ("cpSpaceReindexShapesForBody"
               %chipmunk::space-reindex-shapes-for-body)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::space-reindex-static))

(cffi:defcfun ("cpSpaceReindexStatic"
               %chipmunk::space-reindex-static)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space)))

(declaim (inline %chipmunk::space-remove-body))

(cffi:defcfun ("cpSpaceRemoveBody" %chipmunk::space-remove-body)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::body
               (claw-utils:claw-pointer %chipmunk::body)))

(declaim (inline %chipmunk::space-remove-constraint))

(cffi:defcfun ("cpSpaceRemoveConstraint"
               %chipmunk::space-remove-constraint)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::constraint
               (claw-utils:claw-pointer %chipmunk::constraint)))

(declaim (inline %chipmunk::space-remove-shape))

(cffi:defcfun ("cpSpaceRemoveShape" %chipmunk::space-remove-shape)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape)))

(cffi:defctype %chipmunk::space-segment-query-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-segment-query))

(cffi:defcfun ("__claw_cpSpaceSegmentQuery"
               %chipmunk::space-segment-query)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::start
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::end
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float)
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::func %chipmunk::space-segment-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::space-segment-query-first))

(cffi:defcfun ("__claw_cpSpaceSegmentQueryFirst"
               %chipmunk::space-segment-query-first)
              (claw-utils:claw-pointer %chipmunk::shape)
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::start
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::end
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radius %chipmunk::float)
              (%chipmunk::filter
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::out
               (claw-utils:claw-pointer
                %chipmunk::segment-query-info)))

(declaim (inline %chipmunk::space-set-collision-bias))

(cffi:defcfun ("cpSpaceSetCollisionBias"
               %chipmunk::space-set-collision-bias)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::collision-bias %chipmunk::float))

(declaim (inline %chipmunk::space-set-collision-persistence))

(cffi:defcfun ("cpSpaceSetCollisionPersistence"
               %chipmunk::space-set-collision-persistence)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::collision-persistence %chipmunk::timestamp))

(declaim (inline %chipmunk::space-set-collision-slop))

(cffi:defcfun ("cpSpaceSetCollisionSlop"
               %chipmunk::space-set-collision-slop)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::collision-slop %chipmunk::float))

(declaim (inline %chipmunk::space-set-damping))

(cffi:defcfun ("cpSpaceSetDamping" %chipmunk::space-set-damping)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::damping %chipmunk::float))

(declaim (inline %chipmunk::space-set-gravity))

(cffi:defcfun ("__claw_cpSpaceSetGravity"
               %chipmunk::space-set-gravity)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::gravity
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::space-set-idle-speed-threshold))

(cffi:defcfun ("cpSpaceSetIdleSpeedThreshold"
               %chipmunk::space-set-idle-speed-threshold)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::idle-speed-threshold %chipmunk::float))

(declaim (inline %chipmunk::space-set-iterations))

(cffi:defcfun ("cpSpaceSetIterations"
               %chipmunk::space-set-iterations)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::iterations :int))

(declaim (inline %chipmunk::space-set-sleep-time-threshold))

(cffi:defcfun ("cpSpaceSetSleepTimeThreshold"
               %chipmunk::space-set-sleep-time-threshold)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::sleep-time-threshold %chipmunk::float))

(declaim (inline %chipmunk::space-set-user-data))

(cffi:defcfun ("cpSpaceSetUserData" %chipmunk::space-set-user-data)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::user-data %chipmunk::data-pointer))

(cffi:defctype %chipmunk::space-shape-query-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::space-shape-query))

(cffi:defcfun ("cpSpaceShapeQuery" %chipmunk::space-shape-query)
              %chipmunk::bool
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::shape
               (claw-utils:claw-pointer %chipmunk::shape))
              (%chipmunk::func %chipmunk::space-shape-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::space-step))

(cffi:defcfun ("cpSpaceStep" %chipmunk::space-step)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::dt %chipmunk::float))

(declaim (inline %chipmunk::space-use-spatial-hash))

(cffi:defcfun ("cpSpaceUseSpatialHash"
               %chipmunk::space-use-spatial-hash)
              :void
              (%chipmunk::space
               (claw-utils:claw-pointer %chipmunk::space))
              (%chipmunk::dim %chipmunk::float)
              (%chipmunk::count :int))

(cffi:defctype %chipmunk::spatial-index-query-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::spatial-index-collide-static))

(cffi:defcfun ("cpSpatialIndexCollideStatic"
               %chipmunk::spatial-index-collide-static)
              :void
              (%chipmunk::dynamic-index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::func %chipmunk::spatial-index-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::spatial-index-free))

(cffi:defcfun ("cpSpatialIndexFree" %chipmunk::spatial-index-free)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(cffi:defcstruct (%chipmunk::sweep1d :size 0))

(cffi:defctype %chipmunk::sweep1d (:struct %chipmunk::sweep1d))

(declaim (inline %chipmunk::sweep1d-alloc))

(cffi:defcfun ("cpSweep1DAlloc" %chipmunk::sweep1d-alloc)
              (claw-utils:claw-pointer %chipmunk::sweep1d))

(declaim (inline %chipmunk::sweep1d-init))

(cffi:defcfun ("cpSweep1DInit" %chipmunk::sweep1d-init)
              (claw-utils:claw-pointer %chipmunk::spatial-index)
              (%chipmunk::sweep
               (claw-utils:claw-pointer %chipmunk::sweep1d))
              (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func)
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::sweep1d-new))

(cffi:defcfun ("cpSweep1DNew" %chipmunk::sweep1d-new)
              (claw-utils:claw-pointer %chipmunk::spatial-index)
              (%chipmunk::bbfunc %chipmunk::spatial-index-bb-func)
              (%chipmunk::static-index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(cffi:defcstruct (%chipmunk::array :size 0))

(cffi:defcstruct (%chipmunk::hash-set :size 0))

(cffi:defcstruct (%chipmunk::mat2x2 :size 16)
                 (%chipmunk::a %chipmunk::float :offset 0)
                 (%chipmunk::b %chipmunk::float :offset 4)
                 (%chipmunk::c %chipmunk::float :offset 8)
                 (%chipmunk::d %chipmunk::float :offset 12))

(cffi:defcstruct (%chipmunk::simple-motor-joint :size 0))

(define-symbol-macro
  %chipmunk::*version-string*
  (let ((%chipmunk::ptr
         (cffi:foreign-symbol-pointer "cpVersionString")))
    (when %chipmunk::ptr
      (cffi:mem-ref %chipmunk::ptr 'claw-utils:claw-string))))

(declaim (inline %chipmunk::closet-point-on-segment))

(cffi:defcfun ("__claw_cpClosetPointOnSegment"
               %chipmunk::closet-point-on-segment)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::p
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect)))

(cffi:defctype %chipmunk::array (:struct %chipmunk::array))

(cffi:defctype %chipmunk::hash-set (:struct %chipmunk::hash-set))

(cffi:defctype %chipmunk::simple-motor-joint
               (:struct %chipmunk::simple-motor-joint))

(declaim (inline %chipmunk::fabs))

(cffi:defcfun ("__claw_cpfabs" %chipmunk::fabs)
              %chipmunk::float
              (%chipmunk::f %chipmunk::float))

(declaim (inline %chipmunk::fclamp))

(cffi:defcfun ("__claw_cpfclamp" %chipmunk::fclamp)
              %chipmunk::float
              (%chipmunk::f %chipmunk::float)
              (%chipmunk::min %chipmunk::float)
              (%chipmunk::max %chipmunk::float))

(declaim (inline %chipmunk::fclamp01))

(cffi:defcfun ("__claw_cpfclamp01" %chipmunk::fclamp01)
              %chipmunk::float
              (%chipmunk::f %chipmunk::float))

(declaim (inline %chipmunk::flerp))

(cffi:defcfun ("__claw_cpflerp" %chipmunk::flerp)
              %chipmunk::float
              (%chipmunk::f1 %chipmunk::float)
              (%chipmunk::f2 %chipmunk::float)
              (%chipmunk::t %chipmunk::float))

(declaim (inline %chipmunk::flerpconst))

(cffi:defcfun ("__claw_cpflerpconst" %chipmunk::flerpconst)
              %chipmunk::float
              (%chipmunk::f1 %chipmunk::float)
              (%chipmunk::f2 %chipmunk::float)
              (%chipmunk::d %chipmunk::float))

(declaim (inline %chipmunk::fmax))

(cffi:defcfun ("__claw_cpfmax" %chipmunk::fmax)
              %chipmunk::float
              (%chipmunk::a %chipmunk::float)
              (%chipmunk::b %chipmunk::float))

(declaim (inline %chipmunk::fmin))

(cffi:defcfun ("__claw_cpfmin" %chipmunk::fmin)
              %chipmunk::float
              (%chipmunk::a %chipmunk::float)
              (%chipmunk::b %chipmunk::float))

(cffi:defctype %chipmunk::collision-id :unsigned-int)

(cffi:defctype %chipmunk::hash-value :unsigned-long)

(cffi:defctype %chipmunk::mat2x2 (:struct %chipmunk::mat2x2))

(declaim (inline %chipmunk::bb-area))

(cffi:defcfun ("__claw_cpBBArea" %chipmunk::bb-area)
              %chipmunk::float
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::bb-center))

(cffi:defcfun ("__claw_cpBBCenter" %chipmunk::bb-center)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::bb-clamp-vect))

(cffi:defcfun ("__claw_cpBBClampVect" %chipmunk::bb-clamp-vect)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::bb-contains-bb))

(cffi:defcfun ("__claw_cpBBContainsBB" %chipmunk::bb-contains-bb)
              %chipmunk::bool
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::other
               (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::bb-contains-vect))

(cffi:defcfun ("__claw_cpBBContainsVect" %chipmunk::bb-contains-vect)
              %chipmunk::bool
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::bb-expand))

(cffi:defcfun ("__claw_cpBBExpand" %chipmunk::bb-expand)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::bb-intersects))

(cffi:defcfun ("__claw_cpBBIntersects" %chipmunk::bb-intersects)
              %chipmunk::bool
              (%chipmunk::a (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::b (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::bb-intersects-segment))

(cffi:defcfun ("__claw_cpBBIntersectsSegment"
               %chipmunk::bb-intersects-segment)
              %chipmunk::bool
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::bb-merge))

(cffi:defcfun ("__claw_cpBBMerge" %chipmunk::bb-merge)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::a (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::b (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::bb-merged-area))

(cffi:defcfun ("__claw_cpBBMergedArea" %chipmunk::bb-merged-area)
              %chipmunk::float
              (%chipmunk::a (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::b (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::bb-new))

(cffi:defcfun ("__claw_cpBBNew" %chipmunk::bb-new)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::l %chipmunk::float)
              (%chipmunk::b %chipmunk::float)
              (%chipmunk::r %chipmunk::float)
              (%chipmunk::t %chipmunk::float))

(declaim (inline %chipmunk::bb-new-for-circle))

(cffi:defcfun ("__claw_cpBBNewForCircle"
               %chipmunk::bb-new-for-circle)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::p
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::r %chipmunk::float))

(declaim (inline %chipmunk::bb-new-for-extents))

(cffi:defcfun ("__claw_cpBBNewForExtents"
               %chipmunk::bb-new-for-extents)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::c
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::hw %chipmunk::float)
              (%chipmunk::hh %chipmunk::float))

(declaim (inline %chipmunk::bb-offset))

(cffi:defcfun ("__claw_cpBBOffset" %chipmunk::bb-offset)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::bb-segment-query))

(cffi:defcfun ("__claw_cpBBSegmentQuery" %chipmunk::bb-segment-query)
              %chipmunk::float
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::bb-wrap-vect))

(cffi:defcfun ("__claw_cpBBWrapVect" %chipmunk::bb-wrap-vect)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::shape-filter-new))

(cffi:defcfun ("__claw_cpShapeFilterNew" %chipmunk::shape-filter-new)
              (claw-utils:claw-pointer %chipmunk::shape-filter)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::shape-filter))
              (%chipmunk::group %chipmunk::group)
              (%chipmunk::categories %chipmunk::bitmask)
              (%chipmunk::mask %chipmunk::bitmask))

(declaim (inline %chipmunk::spatial-index-contains))

(cffi:defcfun ("__claw_cpSpatialIndexContains"
               %chipmunk::spatial-index-contains)
              %chipmunk::bool
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::obj (claw-utils:claw-pointer :void))
              (%chipmunk::hashid %chipmunk::hash-value))

(declaim (inline %chipmunk::spatial-index-count))

(cffi:defcfun ("__claw_cpSpatialIndexCount"
               %chipmunk::spatial-index-count)
              :int
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::spatial-index-destroy))

(cffi:defcfun ("__claw_cpSpatialIndexDestroy"
               %chipmunk::spatial-index-destroy)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(cffi:defctype %chipmunk::spatial-index-iterator-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::spatial-index-each))

(cffi:defcfun ("__claw_cpSpatialIndexEach"
               %chipmunk::spatial-index-each)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::func
               %chipmunk::spatial-index-iterator-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::spatial-index-insert))

(cffi:defcfun ("__claw_cpSpatialIndexInsert"
               %chipmunk::spatial-index-insert)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::obj (claw-utils:claw-pointer :void))
              (%chipmunk::hashid %chipmunk::hash-value))

(declaim (inline %chipmunk::spatial-index-query))

(cffi:defcfun ("__claw_cpSpatialIndexQuery"
               %chipmunk::spatial-index-query)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::obj (claw-utils:claw-pointer :void))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::func %chipmunk::spatial-index-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::spatial-index-reindex))

(cffi:defcfun ("__claw_cpSpatialIndexReindex"
               %chipmunk::spatial-index-reindex)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index)))

(declaim (inline %chipmunk::spatial-index-reindex-object))

(cffi:defcfun ("__claw_cpSpatialIndexReindexObject"
               %chipmunk::spatial-index-reindex-object)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::obj (claw-utils:claw-pointer :void))
              (%chipmunk::hashid %chipmunk::hash-value))

(declaim (inline %chipmunk::spatial-index-reindex-query))

(cffi:defcfun ("__claw_cpSpatialIndexReindexQuery"
               %chipmunk::spatial-index-reindex-query)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::func %chipmunk::spatial-index-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::spatial-index-remove))

(cffi:defcfun ("__claw_cpSpatialIndexRemove"
               %chipmunk::spatial-index-remove)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::obj (claw-utils:claw-pointer :void))
              (%chipmunk::hashid %chipmunk::hash-value))

(cffi:defctype %chipmunk::spatial-index-segment-query-func
               (claw-utils:claw-pointer :void))

(declaim (inline %chipmunk::spatial-index-segment-query))

(cffi:defcfun ("__claw_cpSpatialIndexSegmentQuery"
               %chipmunk::spatial-index-segment-query)
              :void
              (%chipmunk::index
               (claw-utils:claw-pointer %chipmunk::spatial-index))
              (%chipmunk::obj (claw-utils:claw-pointer :void))
              (%chipmunk::a
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::b
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::t-exit %chipmunk::float)
              (%chipmunk::func
               %chipmunk::spatial-index-segment-query-func)
              (%chipmunk::data (claw-utils:claw-pointer :void)))

(declaim (inline %chipmunk::transform-axial-scale))

(cffi:defcfun ("__claw_cpTransformAxialScale"
               %chipmunk::transform-axial-scale)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::axis
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::pivot
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::scale %chipmunk::float))

(declaim (inline %chipmunk::transform-bone-scale))

(cffi:defcfun ("__claw_cpTransformBoneScale"
               %chipmunk::transform-bone-scale)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::v0
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::transform-inverse))

(cffi:defcfun ("__claw_cpTransformInverse"
               %chipmunk::transform-inverse)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::t
               (claw-utils:claw-pointer %chipmunk::transform)))

(declaim (inline %chipmunk::transform-mult))

(cffi:defcfun ("__claw_cpTransformMult" %chipmunk::transform-mult)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::t1
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::t2
               (claw-utils:claw-pointer %chipmunk::transform)))

(declaim (inline %chipmunk::transform-new))

(cffi:defcfun ("__claw_cpTransformNew" %chipmunk::transform-new)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::a %chipmunk::float)
              (%chipmunk::b %chipmunk::float)
              (%chipmunk::c %chipmunk::float)
              (%chipmunk::d %chipmunk::float)
              (%chipmunk::tx %chipmunk::float)
              (%chipmunk::ty %chipmunk::float))

(declaim (inline %chipmunk::transform-new-transpose))

(cffi:defcfun ("__claw_cpTransformNewTranspose"
               %chipmunk::transform-new-transpose)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::a %chipmunk::float)
              (%chipmunk::c %chipmunk::float)
              (%chipmunk::tx %chipmunk::float)
              (%chipmunk::b %chipmunk::float)
              (%chipmunk::d %chipmunk::float)
              (%chipmunk::ty %chipmunk::float))

(declaim (inline %chipmunk::transform-ortho))

(cffi:defcfun ("__claw_cpTransformOrtho" %chipmunk::transform-ortho)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::transform-point))

(cffi:defcfun ("__claw_cpTransformPoint" %chipmunk::transform-point)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::t
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::p
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::transform-rigid))

(cffi:defcfun ("__claw_cpTransformRigid" %chipmunk::transform-rigid)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::translate
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::radians %chipmunk::float))

(declaim (inline %chipmunk::transform-rigid-inverse))

(cffi:defcfun ("__claw_cpTransformRigidInverse"
               %chipmunk::transform-rigid-inverse)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::t
               (claw-utils:claw-pointer %chipmunk::transform)))

(declaim (inline %chipmunk::transform-rotate))

(cffi:defcfun ("__claw_cpTransformRotate"
               %chipmunk::transform-rotate)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::radians %chipmunk::float))

(declaim (inline %chipmunk::transform-scale))

(cffi:defcfun ("__claw_cpTransformScale" %chipmunk::transform-scale)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::scale-x %chipmunk::float)
              (%chipmunk::scale-y %chipmunk::float))

(declaim (inline %chipmunk::transform-translate))

(cffi:defcfun ("__claw_cpTransformTranslate"
               %chipmunk::transform-translate)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::translate
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::transform-vect))

(cffi:defcfun ("__claw_cpTransformVect" %chipmunk::transform-vect)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::t
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::transform-wrap))

(cffi:defcfun ("__claw_cpTransformWrap" %chipmunk::transform-wrap)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::outer
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::inner
               (claw-utils:claw-pointer %chipmunk::transform)))

(declaim (inline %chipmunk::transform-wrap-inverse))

(cffi:defcfun ("__claw_cpTransformWrapInverse"
               %chipmunk::transform-wrap-inverse)
              (claw-utils:claw-pointer %chipmunk::transform)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::outer
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::inner
               (claw-utils:claw-pointer %chipmunk::transform)))

(declaim (inline %chipmunk::transformb-bb))

(cffi:defcfun ("__claw_cpTransformbBB" %chipmunk::transformb-bb)
              (claw-utils:claw-pointer %chipmunk::bb)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::bb))
              (%chipmunk::t
               (claw-utils:claw-pointer %chipmunk::transform))
              (%chipmunk::bb (claw-utils:claw-pointer %chipmunk::bb)))

(declaim (inline %chipmunk::mat2x2new))

(cffi:defcfun ("__claw_cpMat2x2New" %chipmunk::mat2x2new)
              (claw-utils:claw-pointer %chipmunk::mat2x2)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::mat2x2))
              (%chipmunk::a %chipmunk::float)
              (%chipmunk::b %chipmunk::float)
              (%chipmunk::c %chipmunk::float)
              (%chipmunk::d %chipmunk::float))

(declaim (inline %chipmunk::mat2x2transform))

(cffi:defcfun ("__claw_cpMat2x2Transform" %chipmunk::mat2x2transform)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::m
               (claw-utils:claw-pointer %chipmunk::mat2x2))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::v))

(cffi:defcfun ("__claw_cpv" %chipmunk::v)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::x %chipmunk::float)
              (%chipmunk::y %chipmunk::float))

(declaim (inline %chipmunk::vadd))

(cffi:defcfun ("__claw_cpvadd" %chipmunk::vadd)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vclamp))

(cffi:defcfun ("__claw_cpvclamp" %chipmunk::vclamp)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::len %chipmunk::float))

(declaim (inline %chipmunk::vcross))

(cffi:defcfun ("__claw_cpvcross" %chipmunk::vcross)
              %chipmunk::float
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vdist))

(cffi:defcfun ("__claw_cpvdist" %chipmunk::vdist)
              %chipmunk::float
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vdistsq))

(cffi:defcfun ("__claw_cpvdistsq" %chipmunk::vdistsq)
              %chipmunk::float
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vdot))

(cffi:defcfun ("__claw_cpvdot" %chipmunk::vdot)
              %chipmunk::float
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::veql))

(cffi:defcfun ("__claw_cpveql" %chipmunk::veql)
              %chipmunk::bool
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vforangle))

(cffi:defcfun ("__claw_cpvforangle" %chipmunk::vforangle)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::a %chipmunk::float))

(declaim (inline %chipmunk::vlength))

(cffi:defcfun ("__claw_cpvlength" %chipmunk::vlength)
              %chipmunk::float
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vlengthsq))

(cffi:defcfun ("__claw_cpvlengthsq" %chipmunk::vlengthsq)
              %chipmunk::float
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vlerp))

(cffi:defcfun ("__claw_cpvlerp" %chipmunk::vlerp)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::t %chipmunk::float))

(declaim (inline %chipmunk::vlerpconst))

(cffi:defcfun ("__claw_cpvlerpconst" %chipmunk::vlerpconst)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::d %chipmunk::float))

(declaim (inline %chipmunk::vmult))

(cffi:defcfun ("__claw_cpvmult" %chipmunk::vmult)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::s %chipmunk::float))

(declaim (inline %chipmunk::vnear))

(cffi:defcfun ("__claw_cpvnear" %chipmunk::vnear)
              %chipmunk::bool
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::dist %chipmunk::float))

(declaim (inline %chipmunk::vneg))

(cffi:defcfun ("__claw_cpvneg" %chipmunk::vneg)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vnormalize))

(cffi:defcfun ("__claw_cpvnormalize" %chipmunk::vnormalize)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vperp))

(cffi:defcfun ("__claw_cpvperp" %chipmunk::vperp)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vproject))

(cffi:defcfun ("__claw_cpvproject" %chipmunk::vproject)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vrotate))

(cffi:defcfun ("__claw_cpvrotate" %chipmunk::vrotate)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vrperp))

(cffi:defcfun ("__claw_cpvrperp" %chipmunk::vrperp)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vslerp))

(cffi:defcfun ("__claw_cpvslerp" %chipmunk::vslerp)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::t %chipmunk::float))

(declaim (inline %chipmunk::vslerpconst))

(cffi:defcfun ("__claw_cpvslerpconst" %chipmunk::vslerpconst)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::a %chipmunk::float))

(declaim (inline %chipmunk::vsub))

(cffi:defcfun ("__claw_cpvsub" %chipmunk::vsub)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vtoangle))

(cffi:defcfun ("__claw_cpvtoangle" %chipmunk::vtoangle)
              %chipmunk::float
              (%chipmunk::v
               (claw-utils:claw-pointer %chipmunk::vect)))

(declaim (inline %chipmunk::vunrotate))

(cffi:defcfun ("__claw_cpvunrotate" %chipmunk::vunrotate)
              (claw-utils:claw-pointer %chipmunk::vect)
              (%chipmunk::%%claw-result-
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v1
               (claw-utils:claw-pointer %chipmunk::vect))
              (%chipmunk::v2
               (claw-utils:claw-pointer %chipmunk::vect)))

(defparameter %chipmunk::+transform-identity+ nil)

(defparameter %chipmunk::+vzero+ nil)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%chipmunk::fmax :%chipmunk)
  (export '%chipmunk::sweep1d :%chipmunk)
  (export '%chipmunk::shape-set-collision-type :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-new :%chipmunk)
  (export '%chipmunk::mat2x2 :%chipmunk)
  (export '%chipmunk::slide-joint-new :%chipmunk)
  (export '%chipmunk::veql :%chipmunk)
  (export '%chipmunk::vlerpconst :%chipmunk)
  (export '%chipmunk::shape-get-area :%chipmunk)
  (export '%chipmunk::groove-joint-get-groove-b :%chipmunk)
  (export '%chipmunk::box-shape-new :%chipmunk)
  (export '%chipmunk::data :%chipmunk)
  (export '%chipmunk::space-get-static-body :%chipmunk)
  (export '%chipmunk::groove-joint-set-groove-a :%chipmunk)
  (export '%chipmunk::hash-value :%chipmunk)
  (export '%chipmunk::body-set-force :%chipmunk)
  (export '%chipmunk::fclamp01 :%chipmunk)
  (export '%chipmunk::vdist :%chipmunk)
  (export '%chipmunk::moment-for-segment :%chipmunk)
  (export '%chipmunk::vnormalize :%chipmunk)
  (export '%chipmunk::space-remove-constraint :%chipmunk)
  (export '%chipmunk::space-debug-draw-color-for-shape-impl
          :%chipmunk)
  (export '%chipmunk::transform-wrap :%chipmunk)
  (export '%chipmunk::transform-inverse :%chipmunk)
  (export '%chipmunk::space-get-current-time-step :%chipmunk)
  (export '%chipmunk::pin-joint-init :%chipmunk)
  (export '%chipmunk::vrperp :%chipmunk)
  (export '%chipmunk::bb-tree-set-velocity-func :%chipmunk)
  (export '%chipmunk::body-get-angle :%chipmunk)
  (export '%chipmunk::message :%chipmunk)
  (export '%chipmunk::shape-set-mass :%chipmunk)
  (export '%chipmunk::shape-get-surface-velocity :%chipmunk)
  (export '%chipmunk::collision-handler :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-get-stiffness :%chipmunk)
  (export '%chipmunk::constraint-set-error-bias :%chipmunk)
  (export '%chipmunk::damped-spring-get-damping :%chipmunk)
  (export '%chipmunk::pin-joint-get-anchor-a :%chipmunk)
  (export '%chipmunk::arbiter-get-count :%chipmunk)
  (export '%chipmunk::+max-contacts-per-arbiter+ :%chipmunk)
  (export '%chipmunk::space-add-default-collision-handler :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-alloc :%chipmunk)
  (export '%chipmunk::reindex-object :%chipmunk)
  (export '%chipmunk::spatial-index-destroy-impl :%chipmunk)
  (export '%chipmunk::segment-shape-get-a :%chipmunk)
  (export '%chipmunk::space-debug-draw :%chipmunk)
  (export '%chipmunk::spatial-index-reindex-impl :%chipmunk)
  (export '%chipmunk::pivot-joint-new2 :%chipmunk)
  (export '%chipmunk::gear-joint-set-ratio :%chipmunk)
  (export '%chipmunk::groove-joint-new :%chipmunk)
  (export '%chipmunk::body-set-velocity :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-init :%chipmunk)
  (export '%chipmunk::body-arbiter-iterator-func :%chipmunk)
  (export '%chipmunk::bb-tree-alloc :%chipmunk)
  (export '%chipmunk::constraint-get-space :%chipmunk)
  (export '%chipmunk::space-debug-draw-fat-segment-impl :%chipmunk)
  (export '%chipmunk::spatial-index-reindex-object-impl :%chipmunk)
  (export '%chipmunk::collision-post-solve-func :%chipmunk)
  (export '%chipmunk::body-get-rotation :%chipmunk)
  (export '%chipmunk::data-pointer :%chipmunk)
  (export '%chipmunk::shape-get-collision-type :%chipmunk)
  (export '%chipmunk::body-get-velocity :%chipmunk)
  (export '%chipmunk::segment-shape-new :%chipmunk)
  (export '%chipmunk::body-destroy :%chipmunk)
  (export '%chipmunk::simple-motor-get-rate :%chipmunk)
  (export '%chipmunk::contains :%chipmunk)
  (export '%chipmunk::draw-dot :%chipmunk)
  (export '%chipmunk::groove-joint-set-anchor-b :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-begin-b :%chipmunk)
  (export '%chipmunk::circle-shape-get-radius :%chipmunk)
  (export '%chipmunk::y :%chipmunk)
  (export '%chipmunk::spatial-index-segment-query-impl :%chipmunk)
  (export '%chipmunk::segment-query :%chipmunk)
  (export '%chipmunk::remove :%chipmunk)
  (export '%chipmunk::body-sleep :%chipmunk)
  (export '%chipmunk::gradient :%chipmunk)
  (export '%chipmunk::ratchet-joint-new :%chipmunk)
  (export '%chipmunk::+shape-filter-none+ :%chipmunk)
  (export '%chipmunk::spatial-index-reindex-query-impl :%chipmunk)
  (export '%chipmunk::ty :%chipmunk)
  (export '%chipmunk::circle-shape-alloc :%chipmunk)
  (export '%chipmunk::constraint :%chipmunk)
  (export '%chipmunk::damped-spring-get-stiffness :%chipmunk)
  (export '%chipmunk::vperp :%chipmunk)
  (export '%chipmunk::arbiter-get-restitution :%chipmunk)
  (export '%chipmunk::spatial-index-count :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-new :%chipmunk)
  (export '%chipmunk::tx :%chipmunk)
  (export '%chipmunk::space-new :%chipmunk)
  (export '%chipmunk::+use-doubles+ :%chipmunk)
  (export '%chipmunk::pivot-joint-set-anchor-b :%chipmunk)
  (export '%chipmunk::constraint-get-user-data :%chipmunk)
  (export '%chipmunk::arbiter-is-first-contact :%chipmunk)
  (export '%chipmunk::body-set-velocity-update-func :%chipmunk)
  (export '%chipmunk::float :%chipmunk)
  (export '%chipmunk::slide-joint-get-max :%chipmunk)
  (export '%chipmunk::constraint-get-collide-bodies :%chipmunk)
  (export '%chipmunk::+version-release+ :%chipmunk)
  (export '%chipmunk::+fp-zero+ :%chipmunk)
  (export '%chipmunk::poly-shape-get-radius :%chipmunk)
  (export '%chipmunk::body-set-angular-velocity :%chipmunk)
  (export '%chipmunk::timestamp :%chipmunk)
  (export '%chipmunk::arbiter-get-bodies :%chipmunk)
  (export '%chipmunk::bb-tree-new :%chipmunk)
  (export '%chipmunk::circle-shape-init :%chipmunk)
  (export '%chipmunk::arbiter-get-user-data :%chipmunk)
  (export '%chipmunk::sweep1d-init :%chipmunk)
  (export '%chipmunk::space-shape-iterator-func :%chipmunk)
  (export '%chipmunk::body-new-kinematic :%chipmunk)
  (export '%chipmunk::bb :%chipmunk)
  (export '%chipmunk::spatial-index-class :%chipmunk)
  (export '%chipmunk::spatial-index-reindex-object :%chipmunk)
  (export '%chipmunk::g :%chipmunk)
  (export '%chipmunk::segment-shape-init :%chipmunk)
  (export '%chipmunk::groove-joint-alloc :%chipmunk)
  (export '%chipmunk::shape-get-center-of-gravity :%chipmunk)
  (export '%chipmunk::+wildcard-collision-type+ :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-torque-func :%chipmunk)
  (export '%chipmunk::array :%chipmunk)
  (export '%chipmunk::body-get-position :%chipmunk)
  (export '%chipmunk::bb-merge :%chipmunk)
  (export '%chipmunk::space-add-post-step-callback :%chipmunk)
  (export '%chipmunk::body-apply-force-at-world-point :%chipmunk)
  (export '%chipmunk::draw-segment :%chipmunk)
  (export '%chipmunk::arbiter-total-ke :%chipmunk)
  (export '%chipmunk::user-data :%chipmunk)
  (export '%chipmunk::fclamp :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-set-spring-torque-func
          :%chipmunk)
  (export '%chipmunk::bb-center :%chipmunk)
  (export '%chipmunk::body-set-position-update-func :%chipmunk)
  (export '%chipmunk::klass :%chipmunk)
  (export '%chipmunk::bb-intersects-segment :%chipmunk)
  (export '%chipmunk::bbfunc :%chipmunk)
  (export '%chipmunk::space-bb-query-func :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-set-rest-angle :%chipmunk)
  (export '%chipmunk::ratchet-joint :%chipmunk)
  (export '%chipmunk::sweep1d-new :%chipmunk)
  (export '%chipmunk::spatial-index :%chipmunk)
  (export '%chipmunk::spatial-index-count-impl :%chipmunk)
  (export '%chipmunk::body-get-torque :%chipmunk)
  (export '%chipmunk::poly-shape-get-vert :%chipmunk)
  (export '%chipmunk::segment-shape-set-neighbors :%chipmunk)
  (export '%chipmunk::constraint-set-max-force :%chipmunk)
  (export '%chipmunk::c :%chipmunk)
  (export '%chipmunk::point :%chipmunk)
  (export '%chipmunk::rotary-limit-joint :%chipmunk)
  (export '%chipmunk::ratchet-joint-set-angle :%chipmunk)
  (export '%chipmunk::d :%chipmunk)
  (export '%chipmunk::collision-pre-solve-func :%chipmunk)
  (export '%chipmunk::damped-spring-get-anchor-b :%chipmunk)
  (export '%chipmunk::transform-new-transpose :%chipmunk)
  (export '%chipmunk::damped-spring-set-damping :%chipmunk)
  (export '%chipmunk::spatial-index-segment-query :%chipmunk)
  (export '%chipmunk::gear-joint-new :%chipmunk)
  (export '%chipmunk::vproject :%chipmunk)
  (export '%chipmunk::space-debug-draw-polygon-impl :%chipmunk)
  (export '%chipmunk::gear-joint-set-phase :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-get-max :%chipmunk)
  (export '%chipmunk::+shape-filter-all+ :%chipmunk)
  (export '%chipmunk::shape-get-sensor :%chipmunk)
  (export '%chipmunk::body-world-to-local :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-begin-a :%chipmunk)
  (export '%chipmunk::space-body-iterator-func :%chipmunk)
  (export '%chipmunk::arbiter-total-impulse :%chipmunk)
  (export '%chipmunk::transform-rigid-inverse :%chipmunk)
  (export '%chipmunk::vdistsq :%chipmunk)
  (export '%chipmunk::space-init :%chipmunk)
  (export '%chipmunk::body-get-mass :%chipmunk)
  (export '%chipmunk::shape-destroy :%chipmunk)
  (export '%chipmunk::bb-new-for-extents :%chipmunk)
  (export '%chipmunk::flags :%chipmunk)
  (export '%chipmunk::space-alloc :%chipmunk)
  (export '%chipmunk::space-get-iterations :%chipmunk)
  (export '%chipmunk::space-bb-query :%chipmunk)
  (export '%chipmunk::arbiter-set-user-data :%chipmunk)
  (export '%chipmunk::+fatan2+ :%chipmunk)
  (export '%chipmunk::box-shape-init2 :%chipmunk)
  (export '%chipmunk::slide-joint-get-min :%chipmunk)
  (export '%chipmunk::bb-new-for-circle :%chipmunk)
  (export '%chipmunk::constraint-is-ratchet-joint :%chipmunk)
  (export '%chipmunk::space-is-locked :%chipmunk)
  (export '%chipmunk::ratchet-joint-get-ratchet :%chipmunk)
  (export '%chipmunk::vunrotate :%chipmunk)
  (export '%chipmunk::shape-get-friction :%chipmunk)
  (export '%chipmunk::body-shape-iterator-func :%chipmunk)
  (export '%chipmunk::spatial-index-reindex :%chipmunk)
  (export '%chipmunk::body-set-moment :%chipmunk)
  (export '%chipmunk::body-set-type :%chipmunk)
  (export '%chipmunk::pin-joint-get-anchor-b :%chipmunk)
  (export '%chipmunk::+transform-identity+ :%chipmunk)
  (export '%chipmunk::distance :%chipmunk)
  (export '%chipmunk::vclamp :%chipmunk)
  (export '%chipmunk::space-segment-query :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-set-damping :%chipmunk)
  (export '%chipmunk::bb-contains-vect :%chipmunk)
  (export '%chipmunk::vdot :%chipmunk)
  (export '%chipmunk::poly-shape-new :%chipmunk)
  (export '%chipmunk::damped-spring-get-anchor-a :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-get-damping :%chipmunk)
  (export '%chipmunk::pin-joint-set-anchor-b :%chipmunk)
  (export '%chipmunk::space-reindex-shapes-for-body :%chipmunk)
  (export '%chipmunk::space-set-damping :%chipmunk)
  (export '%chipmunk::body-get-moment :%chipmunk)
  (export '%chipmunk::constraint-set-collide-bodies :%chipmunk)
  (export '%chipmunk::post-solve-func :%chipmunk)
  (export '%chipmunk::area-for-circle :%chipmunk)
  (export '%chipmunk::ratchet-joint-get-phase :%chipmunk)
  (export '%chipmunk::moment-for-box :%chipmunk)
  (export '%chipmunk::body-activate :%chipmunk)
  (export '%chipmunk::slide-joint-init :%chipmunk)
  (export '%chipmunk::transform :%chipmunk)
  (export '%chipmunk::constraint-free :%chipmunk)
  (export '%chipmunk::draw-polygon :%chipmunk)
  (export '%chipmunk::reindex :%chipmunk)
  (export '%chipmunk::space-hash-init :%chipmunk)
  (export '%chipmunk::pin-joint-alloc :%chipmunk)
  (export '%chipmunk::body-free :%chipmunk)
  (export '%chipmunk::constraint-is-simple-motor :%chipmunk)
  (export '%chipmunk::damped-spring-set-anchor-b :%chipmunk)
  (export '%chipmunk::shape-get-moment :%chipmunk)
  (export '%chipmunk::constraint-is-rotary-limit-joint :%chipmunk)
  (export '%chipmunk::pivot-joint-set-anchor-a :%chipmunk)
  (export '%chipmunk::constraint-post-solve-func :%chipmunk)
  (export '%chipmunk::shape-free :%chipmunk)
  (export '%chipmunk::constraint-get-pre-solve-func :%chipmunk)
  (export '%chipmunk::segment-shape-get-radius :%chipmunk)
  (export '%chipmunk::l :%chipmunk)
  (export '%chipmunk::space-debug-draw-circle-impl :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-post-solve-a :%chipmunk)
  (export '%chipmunk::+fp-infinite+ :%chipmunk)
  (export '%chipmunk::shape-get-user-data :%chipmunk)
  (export '%chipmunk::group :%chipmunk)
  (export '%chipmunk::body-type :%chipmunk)
  (export '%chipmunk::space-hash :%chipmunk)
  (export '%chipmunk::damped-spring-init :%chipmunk)
  (export '%chipmunk::groove-joint-get-anchor-b :%chipmunk)
  (export '%chipmunk::+all-categories+ :%chipmunk)
  (export '%chipmunk::+pi+ :%chipmunk)
  (export '%chipmunk::bb-tree :%chipmunk)
  (export '%chipmunk::space-contains-body :%chipmunk)
  (export '%chipmunk::vlengthsq :%chipmunk)
  (export '%chipmunk::arbiter-set-friction :%chipmunk)
  (export '%chipmunk::shape :%chipmunk)
  (export '%chipmunk::+fsin+ :%chipmunk)
  (export '%chipmunk::moment-for-poly :%chipmunk)
  (export '%chipmunk::+buffer-bytes+ :%chipmunk)
  (export '%chipmunk::*version-string* :%chipmunk)
  (export '%chipmunk::shape-update :%chipmunk)
  (export '%chipmunk::space-get-gravity :%chipmunk)
  (export '%chipmunk::body-get-angular-velocity :%chipmunk)
  (export '%chipmunk::space-contains-constraint :%chipmunk)
  (export '%chipmunk::area-for-poly :%chipmunk)
  (export '%chipmunk::pin-joint-set-dist :%chipmunk)
  (export '%chipmunk::space-add-shape :%chipmunk)
  (export '%chipmunk::+realloc+ :%chipmunk)
  (export '%chipmunk::poly-shape-new-raw :%chipmunk)
  (export '%chipmunk::box-shape-new2 :%chipmunk)
  (export '%chipmunk::transformb-bb :%chipmunk)
  (export '%chipmunk::shape-outline-color :%chipmunk)
  (export '%chipmunk::x :%chipmunk)
  (export '%chipmunk::transform-ortho :%chipmunk)
  (export '%chipmunk::space-each-constraint :%chipmunk)
  (export '%chipmunk::shape-get-filter :%chipmunk)
  (export '%chipmunk::spatial-index-query-impl :%chipmunk)
  (export '%chipmunk::shape-set-elasticity :%chipmunk)
  (export '%chipmunk::groove-joint-init :%chipmunk)
  (export '%chipmunk::shapes-collide :%chipmunk)
  (export '%chipmunk::segment-query-info :%chipmunk)
  (export '%chipmunk::reindex-query :%chipmunk)
  (export '%chipmunk::constraint-get-body-a :%chipmunk)
  (export '%chipmunk::a :%chipmunk)
  (export '%chipmunk::fabs :%chipmunk)
  (export '%chipmunk::spatial-index-contains-impl :%chipmunk)
  (export '%chipmunk::space :%chipmunk)
  (export '%chipmunk::constraint-set-pre-solve-func :%chipmunk)
  (export '%chipmunk::shape-get-body :%chipmunk)
  (export '%chipmunk::flerpconst :%chipmunk)
  (export '%chipmunk::shape-get-space :%chipmunk)
  (export '%chipmunk::simple-motor-new :%chipmunk)
  (export '%chipmunk::simple-motor :%chipmunk)
  (export '%chipmunk::normal :%chipmunk)
  (export '%chipmunk::begin-func :%chipmunk)
  (export '%chipmunk::shape-set-filter :%chipmunk)
  (export '%chipmunk::damped-spring-set-anchor-a :%chipmunk)
  (export '%chipmunk::space-add-wildcard-handler :%chipmunk)
  (export '%chipmunk::body-get-type :%chipmunk)
  (export '%chipmunk::box-shape-init :%chipmunk)
  (export '%chipmunk::space-segment-query-func :%chipmunk)
  (export '%chipmunk::constraint-get-impulse :%chipmunk)
  (export '%chipmunk::space-constraint-iterator-func :%chipmunk)
  (export '%chipmunk::post-step-func :%chipmunk)
  (export '%chipmunk::space-remove-body :%chipmunk)
  (export '%chipmunk::space-get-idle-speed-threshold :%chipmunk)
  (export '%chipmunk::gear-joint-init :%chipmunk)
  (export '%chipmunk::hash-set :%chipmunk)
  (export '%chipmunk::damped-spring :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-post-solve-b :%chipmunk)
  (export '%chipmunk::space-hash-alloc :%chipmunk)
  (export '%chipmunk::bb-contains-bb :%chipmunk)
  (export '%chipmunk::shape-set-user-data :%chipmunk)
  (export '%chipmunk::body-update-velocity :%chipmunk)
  (export '%chipmunk::insert :%chipmunk)
  (export '%chipmunk::constraint-set-user-data :%chipmunk)
  (export '%chipmunk::body-constraint-iterator-func :%chipmunk)
  (export '%chipmunk::spatial-index-iterator-func :%chipmunk)
  (export '%chipmunk::collision-point-color :%chipmunk)
  (export '%chipmunk::transform-wrap-inverse :%chipmunk)
  (export '%chipmunk::pin-joint :%chipmunk)
  (export '%chipmunk::spatial-index-segment-query-func :%chipmunk)
  (export '%chipmunk::ratchet-joint-set-phase :%chipmunk)
  (export '%chipmunk::damped-spring-alloc :%chipmunk)
  (export '%chipmunk::arbiter-get-depth :%chipmunk)
  (export '%chipmunk::body-kinetic-energy :%chipmunk)
  (export '%chipmunk::static-index :%chipmunk)
  (export '%chipmunk::damped-spring-set-stiffness :%chipmunk)
  (export '%chipmunk::spatial-index-destroy :%chipmunk)
  (export '%chipmunk::centroid-for-poly :%chipmunk)
  (export '%chipmunk::pin-joint-get-dist :%chipmunk)
  (export '%chipmunk::bb-area :%chipmunk)
  (export '%chipmunk::slide-joint-alloc :%chipmunk)
  (export '%chipmunk::constraint-is-pivot-joint :%chipmunk)
  (export '%chipmunk::vlerp :%chipmunk)
  (export '%chipmunk::+fsqrt+ :%chipmunk)
  (export '%chipmunk::segment-shape :%chipmunk)
  (export '%chipmunk::draw-circle :%chipmunk)
  (export '%chipmunk::circle-shape :%chipmunk)
  (export '%chipmunk::area-for-segment :%chipmunk)
  (export '%chipmunk::segment-shape-get-normal :%chipmunk)
  (export '%chipmunk::spatial-index-each :%chipmunk)
  (export '%chipmunk::space-each-shape :%chipmunk)
  (export '%chipmunk::shape-set-friction :%chipmunk)
  (export '%chipmunk::pin-joint-new :%chipmunk)
  (export '%chipmunk::vlength :%chipmunk)
  (export '%chipmunk::draw-fat-segment :%chipmunk)
  (export '%chipmunk::slide-joint-get-anchor-b :%chipmunk)
  (export '%chipmunk::shape-get-bb :%chipmunk)
  (export '%chipmunk::shape-filter :%chipmunk)
  (export '%chipmunk::+ffloor+ :%chipmunk)
  (export '%chipmunk::alpha :%chipmunk)
  (export '%chipmunk::body-each-arbiter :%chipmunk)
  (export '%chipmunk::slide-joint-set-min :%chipmunk)
  (export '%chipmunk::convex-hull :%chipmunk)
  (export '%chipmunk::shape-cache-bb :%chipmunk)
  (export '%chipmunk::bb-tree-optimize :%chipmunk)
  (export '%chipmunk::space-debug-draw-options :%chipmunk)
  (export '%chipmunk::spatial-index-contains :%chipmunk)
  (export '%chipmunk::slide-joint :%chipmunk)
  (export '%chipmunk::ratchet-joint-get-angle :%chipmunk)
  (export '%chipmunk::damped-spring-set-spring-force-func :%chipmunk)
  (export '%chipmunk::poly-shape-init-raw :%chipmunk)
  (export '%chipmunk::collision-id :%chipmunk)
  (export '%chipmunk::poly-shape-alloc :%chipmunk)
  (export '%chipmunk::simple-motor-init :%chipmunk)
  (export '%chipmunk::space-shape-query :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-get-spring-torque-func
          :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-alloc :%chipmunk)
  (export '%chipmunk::segment-shape-get-b :%chipmunk)
  (export '%chipmunk::body-local-to-world :%chipmunk)
  (export '%chipmunk::arbiter-is-removal :%chipmunk)
  (export '%chipmunk::bb-segment-query :%chipmunk)
  (export '%chipmunk::+vzero+ :%chipmunk)
  (export '%chipmunk::+fmod+ :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-separate-b :%chipmunk)
  (export '%chipmunk::body-set-center-of-gravity :%chipmunk)
  (export '%chipmunk::shape-set-surface-velocity :%chipmunk)
  (export '%chipmunk::damped-spring-get-spring-force-func :%chipmunk)
  (export '%chipmunk::pin-joint-set-anchor-a :%chipmunk)
  (export '%chipmunk::constraint-is-groove-joint :%chipmunk)
  (export '%chipmunk::body-each-constraint :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-pre-solve-b :%chipmunk)
  (export '%chipmunk::shape-set-body :%chipmunk)
  (export '%chipmunk::arbiter-set-surface-velocity :%chipmunk)
  (export '%chipmunk::r :%chipmunk)
  (export '%chipmunk::+use-cgtypes+ :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-get-min :%chipmunk)
  (export '%chipmunk::mat2x2new :%chipmunk)
  (export '%chipmunk::slide-joint-set-anchor-a :%chipmunk)
  (export '%chipmunk::+fpow+ :%chipmunk)
  (export '%chipmunk::constraint-is-gear-joint :%chipmunk)
  (export '%chipmunk::shape-get-elasticity :%chipmunk)
  (export '%chipmunk::constraint-is-damped-rotary-spring :%chipmunk)
  (export '%chipmunk::body-each-shape :%chipmunk)
  (export '%chipmunk::space-debug-draw-segment-impl :%chipmunk)
  (export '%chipmunk::arbiter :%chipmunk)
  (export '%chipmunk::damped-spring-set-rest-length :%chipmunk)
  (export '%chipmunk::categories :%chipmunk)
  (export '%chipmunk::vforangle :%chipmunk)
  (export '%chipmunk::space-add-body :%chipmunk)
  (export '%chipmunk::vslerp :%chipmunk)
  (export '%chipmunk::body-apply-impulse-at-local-point :%chipmunk)
  (export '%chipmunk::space-set-idle-speed-threshold :%chipmunk)
  (export '%chipmunk::constraint-get-error-bias :%chipmunk)
  (export '%chipmunk::arbiter-get-point-a :%chipmunk)
  (export '%chipmunk::fmin :%chipmunk)
  (export '%chipmunk::collision-separate-func :%chipmunk)
  (export '%chipmunk::vnear :%chipmunk)
  (export '%chipmunk::pivot-joint-init :%chipmunk)
  (export '%chipmunk::bb-offset :%chipmunk)
  (export '%chipmunk::separate-func :%chipmunk)
  (export '%chipmunk::body-get-velocity-at-world-point :%chipmunk)
  (export '%chipmunk::shape-point-query :%chipmunk)
  (export '%chipmunk::body-sleep-with-group :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-separate-a :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-set-stiffness :%chipmunk)
  (export '%chipmunk::space-segment-query-first :%chipmunk)
  (export '%chipmunk::body-apply-force-at-local-point :%chipmunk)
  (export '%chipmunk::space-debug-draw-dot-impl :%chipmunk)
  (export '%chipmunk::color-for-shape :%chipmunk)
  (export '%chipmunk::space-debug-color :%chipmunk)
  (export '%chipmunk::transform-mult :%chipmunk)
  (export '%chipmunk::body-activate-static :%chipmunk)
  (export '%chipmunk::bb-expand :%chipmunk)
  (export '%chipmunk::constraint-pre-solve-func :%chipmunk)
  (export '%chipmunk::transform-new :%chipmunk)
  (export '%chipmunk::v :%chipmunk)
  (export '%chipmunk::body-get-velocity-at-local-point :%chipmunk)
  (export '%chipmunk::sweep1d-alloc :%chipmunk)
  (export '%chipmunk::gear-joint-get-ratio :%chipmunk)
  (export '%chipmunk::arbiter-get-shapes :%chipmunk)
  (export '%chipmunk::poly-shape :%chipmunk)
  (export '%chipmunk::space-get-sleep-time-threshold :%chipmunk)
  (export '%chipmunk::constraint-color :%chipmunk)
  (export '%chipmunk::transform-vect :%chipmunk)
  (export '%chipmunk::groove-joint :%chipmunk)
  (export '%chipmunk::collision-begin-func :%chipmunk)
  (export '%chipmunk::space-remove-shape :%chipmunk)
  (export '%chipmunk::vsub :%chipmunk)
  (export '%chipmunk::transform-translate :%chipmunk)
  (export '%chipmunk::shape-get-mass :%chipmunk)
  (export '%chipmunk::bb-wrap-vect :%chipmunk)
  (export '%chipmunk::ratchet-joint-init :%chipmunk)
  (export '%chipmunk::spatial-index-each-impl :%chipmunk)
  (export '%chipmunk::space-set-sleep-time-threshold :%chipmunk)
  (export '%chipmunk::vcross :%chipmunk)
  (export '%chipmunk::constraint-is-damped-spring :%chipmunk)
  (export '%chipmunk::+facos+ :%chipmunk)
  (export '%chipmunk::arbiter-set-restitution :%chipmunk)
  (export '%chipmunk::arbiter-call-wildcard-pre-solve-a :%chipmunk)
  (export '%chipmunk::space-reindex-shape :%chipmunk)
  (export '%chipmunk::arbiter-get-surface-velocity :%chipmunk)
  (export '%chipmunk::simple-motor-set-rate :%chipmunk)
  (export '%chipmunk::segment-shape-alloc :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-init :%chipmunk)
  (export '%chipmunk::space-set-collision-slop :%chipmunk)
  (export '%chipmunk::space-get-collision-bias :%chipmunk)
  (export '%chipmunk::type-b :%chipmunk)
  (export '%chipmunk::+fp-normal+ :%chipmunk)
  (export '%chipmunk::shape-get-density :%chipmunk)
  (export '%chipmunk::pivot-joint-get-anchor-a :%chipmunk)
  (export '%chipmunk::simple-motor-alloc :%chipmunk)
  (export '%chipmunk::body-apply-impulse-at-world-point :%chipmunk)
  (export '%chipmunk::space-set-iterations :%chipmunk)
  (export '%chipmunk::spatial-index-insert-impl :%chipmunk)
  (export '%chipmunk::damped-rotary-spring :%chipmunk)
  (export '%chipmunk::pre-solve-func :%chipmunk)
  (export '%chipmunk::space-get-damping :%chipmunk)
  (export '%chipmunk::arbiter-set-contact-point-set :%chipmunk)
  (export '%chipmunk::+no-group+ :%chipmunk)
  (export '%chipmunk::body-velocity-func :%chipmunk)
  (export '%chipmunk::space-use-spatial-hash :%chipmunk)
  (export '%chipmunk::poly-shape-get-count :%chipmunk)
  (export '%chipmunk::constraint-set-post-solve-func :%chipmunk)
  (export '%chipmunk::pivot-joint-alloc :%chipmunk)
  (export '%chipmunk::space-point-query-nearest :%chipmunk)
  (export '%chipmunk::damped-spring-new :%chipmunk)
  (export '%chipmunk::type-a :%chipmunk)
  (export '%chipmunk::constraint-get-max-force :%chipmunk)
  (export '%chipmunk::simple-motor-joint :%chipmunk)
  (export '%chipmunk::space-set-user-data :%chipmunk)
  (export '%chipmunk::groove-joint-get-groove-a :%chipmunk)
  (export '%chipmunk::bb-tree-init :%chipmunk)
  (export '%chipmunk::space-contains-shape :%chipmunk)
  (export '%chipmunk::mat2x2transform :%chipmunk)
  (export '%chipmunk::transform-bone-scale :%chipmunk)
  (export '%chipmunk::gear-joint :%chipmunk)
  (export '%chipmunk::vadd :%chipmunk)
  (export '%chipmunk::body-set-torque :%chipmunk)
  (export '%chipmunk::pivot-joint-get-anchor-b :%chipmunk)
  (export '%chipmunk::space-point-query :%chipmunk)
  (export '%chipmunk::query :%chipmunk)
  (export '%chipmunk::spatial-index-bb-func :%chipmunk)
  (export '%chipmunk::+free+ :%chipmunk)
  (export '%chipmunk::arbiter-get-friction :%chipmunk)
  (export '%chipmunk::+version-minor+ :%chipmunk)
  (export '%chipmunk::poly-shape-init :%chipmunk)
  (export '%chipmunk::body-set-position :%chipmunk)
  (export '%chipmunk::transform-rigid :%chipmunk)
  (export '%chipmunk::vmult :%chipmunk)
  (export '%chipmunk::space-add-constraint :%chipmunk)
  (export '%chipmunk::space-add-collision-handler :%chipmunk)
  (export '%chipmunk::constraint-get-body-b :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-set-max :%chipmunk)
  (export '%chipmunk::pivot-joint :%chipmunk)
  (export '%chipmunk::bb-merged-area :%chipmunk)
  (export '%chipmunk::constraint-set-max-bias :%chipmunk)
  (export '%chipmunk::+fceil+ :%chipmunk)
  (export '%chipmunk::constraint-is-pin-joint :%chipmunk)
  (export '%chipmunk::bitmask :%chipmunk)
  (export '%chipmunk::space-hash-resize :%chipmunk)
  (export '%chipmunk::transform-axial-scale :%chipmunk)
  (export '%chipmunk::+fcos+ :%chipmunk)
  (export '%chipmunk::body-is-sleeping :%chipmunk)
  (export '%chipmunk::slide-joint-set-max :%chipmunk)
  (export '%chipmunk::slide-joint-get-anchor-a :%chipmunk)
  (export '%chipmunk::collision-type :%chipmunk)
  (export '%chipmunk::body-new :%chipmunk)
  (export '%chipmunk::+fp-subnormal+ :%chipmunk)
  (export '%chipmunk::space-hash-new :%chipmunk)
  (export '%chipmunk::t :%chipmunk)
  (export '%chipmunk::constraint-get-post-solve-func :%chipmunk)
  (export '%chipmunk::point-query-info :%chipmunk)
  (export '%chipmunk::moment-for-circle :%chipmunk)
  (export '%chipmunk::body-new-static :%chipmunk)
  (export '%chipmunk::body-get-space :%chipmunk)
  (export '%chipmunk::vtoangle :%chipmunk)
  (export '%chipmunk::+calloc+ :%chipmunk)
  (export '%chipmunk::space-shape-query-func :%chipmunk)
  (export '%chipmunk::body-get-user-data :%chipmunk)
  (export '%chipmunk::body-set-angle :%chipmunk)
  (export '%chipmunk::count :%chipmunk)
  (export '%chipmunk::spatial-index-remove-impl :%chipmunk)
  (export '%chipmunk::rotary-limit-joint-set-min :%chipmunk)
  (export '%chipmunk::spatial-index-query-func :%chipmunk)
  (export '%chipmunk::+false+ :%chipmunk)
  (export '%chipmunk::space-each-body :%chipmunk)
  (export '%chipmunk::groove-joint-set-groove-b :%chipmunk)
  (export '%chipmunk::+version-major+ :%chipmunk)
  (export '%chipmunk::+fp-nan+ :%chipmunk)
  (export '%chipmunk::mask :%chipmunk)
  (export '%chipmunk::transform-scale :%chipmunk)
  (export '%chipmunk::+fexp+ :%chipmunk)
  (export '%chipmunk::gear-joint-get-phase :%chipmunk)
  (export '%chipmunk::space-reindex-static :%chipmunk)
  (export '%chipmunk::ratchet-joint-alloc :%chipmunk)
  (export '%chipmunk::shape-filter-new :%chipmunk)
  (export '%chipmunk::arbiter-ignore :%chipmunk)
  (export '%chipmunk::damped-spring-force-func :%chipmunk)
  (export '%chipmunk::bb-tree-velocity-func :%chipmunk)
  (export '%chipmunk::shape-set-sensor :%chipmunk)
  (export '%chipmunk::vslerpconst :%chipmunk)
  (export '%chipmunk::arbiter-get-contact-point-set :%chipmunk)
  (export '%chipmunk::body-get-center-of-gravity :%chipmunk)
  (export '%chipmunk::space-get-collision-slop :%chipmunk)
  (export '%chipmunk::bool :%chipmunk)
  (export '%chipmunk::bb-intersects :%chipmunk)
  (export '%chipmunk::slide-joint-set-anchor-b :%chipmunk)
  (export '%chipmunk::flerp :%chipmunk)
  (export '%chipmunk::space-set-gravity :%chipmunk)
  (export '%chipmunk::shape-segment-query :%chipmunk)
  (export '%chipmunk::body-get-force :%chipmunk)
  (export '%chipmunk::space-free :%chipmunk)
  (export '%chipmunk::each :%chipmunk)
  (export '%chipmunk::body-position-func :%chipmunk)
  (export '%chipmunk::+export+ :%chipmunk)
  (export '%chipmunk::moment-for-box2 :%chipmunk)
  (export '%chipmunk::transform-point :%chipmunk)
  (export '%chipmunk::bb-clamp-vect :%chipmunk)
  (export '%chipmunk::spatial-index-free :%chipmunk)
  (export '%chipmunk::shape-set-density :%chipmunk)
  (export '%chipmunk::arbiter-get-point-b :%chipmunk)
  (export '%chipmunk::bb-new :%chipmunk)
  (export '%chipmunk::spatial-index-insert :%chipmunk)
  (export '%chipmunk::ratchet-joint-set-ratchet :%chipmunk)
  (export '%chipmunk::space-set-collision-persistence :%chipmunk)
  (export '%chipmunk::circle-shape-new :%chipmunk)
  (export '%chipmunk::gear-joint-alloc :%chipmunk)
  (export '%chipmunk::destroy :%chipmunk)
  (export '%chipmunk::vrotate :%chipmunk)
  (export '%chipmunk::space-step :%chipmunk)
  (export '%chipmunk::vect :%chipmunk)
  (export '%chipmunk::contact-point-set :%chipmunk)
  (export '%chipmunk::spatial-index-reindex-query :%chipmunk)
  (export '%chipmunk::circle-shape-get-offset :%chipmunk)
  (export '%chipmunk::body-set-mass :%chipmunk)
  (export '%chipmunk::spatial-index-remove :%chipmunk)
  (export '%chipmunk::dynamic-index :%chipmunk)
  (export '%chipmunk::spatial-index-query :%chipmunk)
  (export '%chipmunk::constraint-is-slide-joint :%chipmunk)
  (export '%chipmunk::space-destroy :%chipmunk)
  (export '%chipmunk::closet-point-on-segment :%chipmunk)
  (export '%chipmunk::space-get-collision-persistence :%chipmunk)
  (export '%chipmunk::constraint-destroy :%chipmunk)
  (export '%chipmunk::b :%chipmunk)
  (export '%chipmunk::damped-rotary-spring-get-rest-angle :%chipmunk)
  (export '%chipmunk::body-update-position :%chipmunk)
  (export '%chipmunk::body-init :%chipmunk)
  (export '%chipmunk::spatial-index-collide-static :%chipmunk)
  (export '%chipmunk::+true+ :%chipmunk)
  (export '%chipmunk::body :%chipmunk)
  (export '%chipmunk::arbiter-get-normal :%chipmunk)
  (export '%chipmunk::pivot-joint-new :%chipmunk)
  (export '%chipmunk::body-alloc :%chipmunk)
  (export '%chipmunk::damped-spring-get-rest-length :%chipmunk)
  (export '%chipmunk::space-set-collision-bias :%chipmunk)
  (export '%chipmunk::constraint-get-max-bias :%chipmunk)
  (export '%chipmunk::space-point-query-func :%chipmunk)
  (export '%chipmunk::transform-rotate :%chipmunk)
  (export '%chipmunk::space-get-user-data :%chipmunk)
  (export '%chipmunk::vneg :%chipmunk)
  (export '%chipmunk::space-debug-draw-flags :%chipmunk)
  (export '%chipmunk::body-set-user-data :%chipmunk))

