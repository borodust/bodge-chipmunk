#include "bodge_chipmunk.h"
#ifndef __CLAW_API
  #ifdef __cplusplus
    #define __CLAW_API extern "C"
  #else
    #define __CLAW_API
  #endif
#endif

__CLAW_API cpSlideJoint* __claw_cpSlideJointInit(cpSlideJoint* arg0, cpBody* arg1, cpBody* arg2, struct cpVect* arg3, struct cpVect* arg4, double arg5, double arg6) {
  cpSlideJoint* result = cpSlideJointInit(arg0, arg1, arg2, (*arg3), (*arg4), arg5, arg6);
  return result;
}

__CLAW_API void __claw_cpSpaceBBQuery(cpSpace* arg0, struct cpBB* arg1, struct cpShapeFilter* arg2, cpSpaceBBQueryFunc arg3, void** arg4) {
  cpSpaceBBQuery(arg0, (*arg1), (*arg2), arg3, arg4);
}

__CLAW_API cpConstraint* __claw_cpDampedSpringNew(cpBody* arg0, cpBody* arg1, struct cpVect* arg2, struct cpVect* arg3, double arg4, double arg5, double arg6) {
  cpConstraint* result = cpDampedSpringNew(arg0, arg1, (*arg2), (*arg3), arg4, arg5, arg6);
  return result;
}

__CLAW_API void __claw_cpShapeGetSurfaceVelocity(struct cpVect* arg1, cpShape* arg0) {
  struct cpVect result = cpShapeGetSurfaceVelocity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyApplyForceAtWorldPoint(cpBody* arg0, struct cpVect* arg1, struct cpVect* arg2) {
  cpBodyApplyForceAtWorldPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpShapeGetFilter(struct cpShapeFilter* arg1, cpShape* arg0) {
  struct cpShapeFilter result = cpShapeGetFilter(arg0);
  (*arg1) = result;
}

__CLAW_API double __claw_cpShapePointQuery(cpShape* arg0, struct cpVect* arg1, cpPointQueryInfo* arg2) {
  double result = cpShapePointQuery(arg0, (*arg1), arg2);
  return result;
}

__CLAW_API void __claw_cpBodyGetVelocity(struct cpVect* arg1, cpBody* arg0) {
  struct cpVect result = cpBodyGetVelocity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyApplyImpulseAtLocalPoint(cpBody* arg0, struct cpVect* arg1, struct cpVect* arg2) {
  cpBodyApplyImpulseAtLocalPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpPinJointGetAnchorB(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpPinJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSegmentShapeGetA(struct cpVect* arg1, cpShape* arg0) {
  struct cpVect result = cpSegmentShapeGetA(arg0);
  (*arg1) = result;
}

__CLAW_API cpConstraint* __claw_cpPivotJointNew2(cpBody* arg0, cpBody* arg1, struct cpVect* arg2, struct cpVect* arg3) {
  cpConstraint* result = cpPivotJointNew2(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API cpShape* __claw_cpBoxShapeNew2(cpBody* arg0, struct cpBB* arg1, double arg2) {
  cpShape* result = cpBoxShapeNew2(arg0, (*arg1), arg2);
  return result;
}

__CLAW_API void __claw_cpPivotJointGetAnchorA(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpPivotJointGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSlideJointGetAnchorB(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpSlideJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSpacePointQuery(cpSpace* arg0, struct cpVect* arg1, double arg2, struct cpShapeFilter* arg3, cpSpacePointQueryFunc arg4, void** arg5) {
  cpSpacePointQuery(arg0, (*arg1), arg2, (*arg3), arg4, arg5);
}

__CLAW_API void __claw_cpSegmentShapeSetNeighbors(cpShape* arg0, struct cpVect* arg1, struct cpVect* arg2) {
  cpSegmentShapeSetNeighbors(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpSpaceSetGravity(cpSpace* arg0, struct cpVect* arg1) {
  cpSpaceSetGravity(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodyGetVelocityAtWorldPoint(struct cpVect* arg2, cpBody* arg0, struct cpVect* arg1) {
  struct cpVect result = cpBodyGetVelocityAtWorldPoint(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpBodySetCenterOfGravity(cpBody* arg0, struct cpVect* arg1) {
  cpBodySetCenterOfGravity(arg0, (*arg1));
}

__CLAW_API cpConstraint* __claw_cpPinJointNew(cpBody* arg0, cpBody* arg1, struct cpVect* arg2, struct cpVect* arg3) {
  cpConstraint* result = cpPinJointNew(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API void __claw_cpGrooveJointSetGrooveB(cpConstraint* arg0, struct cpVect* arg1) {
  cpGrooveJointSetGrooveB(arg0, (*arg1));
}

__CLAW_API void __claw_cpShapesCollide(struct cpContactPointSet* arg2, cpShape* arg0, cpShape* arg1) {
  struct cpContactPointSet result = cpShapesCollide(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpPinJointGetAnchorA(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpPinJointGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetVelocityAtLocalPoint(struct cpVect* arg2, cpBody* arg0, struct cpVect* arg1) {
  struct cpVect result = cpBodyGetVelocityAtLocalPoint(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpCircleShapeGetOffset(struct cpVect* arg1, cpShape* arg0) {
  struct cpVect result = cpCircleShapeGetOffset(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpPinJointSetAnchorB(cpConstraint* arg0, struct cpVect* arg1) {
  cpPinJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpArbiterGetPointB(struct cpVect* arg2, cpArbiter* arg0, int arg1) {
  struct cpVect result = cpArbiterGetPointB(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpSlideJointSetAnchorA(cpConstraint* arg0, struct cpVect* arg1) {
  cpSlideJointSetAnchorA(arg0, (*arg1));
}

__CLAW_API void __claw_cpPivotJointSetAnchorA(cpConstraint* arg0, struct cpVect* arg1) {
  cpPivotJointSetAnchorA(arg0, (*arg1));
}

__CLAW_API cpCircleShape* __claw_cpCircleShapeInit(cpCircleShape* arg0, cpBody* arg1, double arg2, struct cpVect* arg3) {
  cpCircleShape* result = cpCircleShapeInit(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API void __claw_cpSlideJointSetAnchorB(cpConstraint* arg0, struct cpVect* arg1) {
  cpSlideJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpArbiterTotalImpulse(struct cpVect* arg1, cpArbiter* arg0) {
  struct cpVect result = cpArbiterTotalImpulse(arg0);
  (*arg1) = result;
}

__CLAW_API cpShape* __claw_cpSpaceSegmentQueryFirst(cpSpace* arg0, struct cpVect* arg1, struct cpVect* arg2, double arg3, struct cpShapeFilter* arg4, cpSegmentQueryInfo* arg5) {
  cpShape* result = cpSpaceSegmentQueryFirst(arg0, (*arg1), (*arg2), arg3, (*arg4), arg5);
  return result;
}

__CLAW_API cpPolyShape* __claw_cpBoxShapeInit2(cpPolyShape* arg0, cpBody* arg1, struct cpBB* arg2, double arg3) {
  cpPolyShape* result = cpBoxShapeInit2(arg0, arg1, (*arg2), arg3);
  return result;
}

__CLAW_API void __claw_cpGrooveJointSetGrooveA(cpConstraint* arg0, struct cpVect* arg1) {
  cpGrooveJointSetGrooveA(arg0, (*arg1));
}

__CLAW_API unsigned char __claw_cpShapeSegmentQuery(cpShape* arg0, struct cpVect* arg1, struct cpVect* arg2, double arg3, cpSegmentQueryInfo* arg4) {
  unsigned char result = cpShapeSegmentQuery(arg0, (*arg1), (*arg2), arg3, arg4);
  return result;
}

__CLAW_API void __claw_cpPivotJointGetAnchorB(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpPivotJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetPosition(struct cpVect* arg1, cpBody* arg0) {
  struct cpVect result = cpBodyGetPosition(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetRotation(struct cpVect* arg1, cpBody* arg0) {
  struct cpVect result = cpBodyGetRotation(arg0);
  (*arg1) = result;
}

__CLAW_API double __claw_cpMomentForSegment(double arg0, struct cpVect* arg1, struct cpVect* arg2, double arg3) {
  double result = cpMomentForSegment(arg0, (*arg1), (*arg2), arg3);
  return result;
}

__CLAW_API void __claw_cpShapeUpdate(struct cpBB* arg2, cpShape* arg0, struct cpTransform* arg1) {
  struct cpBB result = cpShapeUpdate(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpBodySetPosition(cpBody* arg0, struct cpVect* arg1) {
  cpBodySetPosition(arg0, (*arg1));
}

__CLAW_API cpShape* __claw_cpPolyShapeNew(cpBody* arg0, int arg1, cpVect* arg2, struct cpTransform* arg3, double arg4) {
  cpShape* result = cpPolyShapeNew(arg0, arg1, arg2, (*arg3), arg4);
  return result;
}

__CLAW_API void __claw_cpArbiterGetPointA(struct cpVect* arg2, cpArbiter* arg0, int arg1) {
  struct cpVect result = cpArbiterGetPointA(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpGrooveJointSetAnchorB(cpConstraint* arg0, struct cpVect* arg1) {
  cpGrooveJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API cpPolyShape* __claw_cpPolyShapeInit(cpPolyShape* arg0, cpBody* arg1, int arg2, cpVect* arg3, struct cpTransform* arg4, double arg5) {
  cpPolyShape* result = cpPolyShapeInit(arg0, arg1, arg2, arg3, (*arg4), arg5);
  return result;
}

__CLAW_API void __claw_cpDampedSpringGetAnchorB(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpDampedSpringGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpPivotJointSetAnchorB(cpConstraint* arg0, struct cpVect* arg1) {
  cpPivotJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API cpPinJoint* __claw_cpPinJointInit(cpPinJoint* arg0, cpBody* arg1, cpBody* arg2, struct cpVect* arg3, struct cpVect* arg4) {
  cpPinJoint* result = cpPinJointInit(arg0, arg1, arg2, (*arg3), (*arg4));
  return result;
}

__CLAW_API cpSegmentShape* __claw_cpSegmentShapeInit(cpSegmentShape* arg0, cpBody* arg1, struct cpVect* arg2, struct cpVect* arg3, double arg4) {
  cpSegmentShape* result = cpSegmentShapeInit(arg0, arg1, (*arg2), (*arg3), arg4);
  return result;
}

__CLAW_API void __claw_cpDampedSpringSetAnchorA(cpConstraint* arg0, struct cpVect* arg1) {
  cpDampedSpringSetAnchorA(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodyLocalToWorld(struct cpVect* arg2, cpBody* arg0, struct cpVect* arg1) {
  struct cpVect result = cpBodyLocalToWorld(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API cpShape* __claw_cpSegmentShapeNew(cpBody* arg0, struct cpVect* arg1, struct cpVect* arg2, double arg3) {
  cpShape* result = cpSegmentShapeNew(arg0, (*arg1), (*arg2), arg3);
  return result;
}

__CLAW_API cpDampedSpring* __claw_cpDampedSpringInit(cpDampedSpring* arg0, cpBody* arg1, cpBody* arg2, struct cpVect* arg3, struct cpVect* arg4, double arg5, double arg6, double arg7) {
  cpDampedSpring* result = cpDampedSpringInit(arg0, arg1, arg2, (*arg3), (*arg4), arg5, arg6, arg7);
  return result;
}

__CLAW_API void __claw_cpShapeSetFilter(cpShape* arg0, struct cpShapeFilter* arg1) {
  cpShapeSetFilter(arg0, (*arg1));
}

__CLAW_API cpPivotJoint* __claw_cpPivotJointInit(cpPivotJoint* arg0, cpBody* arg1, cpBody* arg2, struct cpVect* arg3, struct cpVect* arg4) {
  cpPivotJoint* result = cpPivotJointInit(arg0, arg1, arg2, (*arg3), (*arg4));
  return result;
}

__CLAW_API void __claw_cpBodySetForce(cpBody* arg0, struct cpVect* arg1) {
  cpBodySetForce(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodyUpdateVelocity(cpBody* arg0, struct cpVect* arg1, double arg2, double arg3) {
  cpBodyUpdateVelocity(arg0, (*arg1), arg2, arg3);
}

__CLAW_API void __claw_cpSpaceSegmentQuery(cpSpace* arg0, struct cpVect* arg1, struct cpVect* arg2, double arg3, struct cpShapeFilter* arg4, cpSpaceSegmentQueryFunc arg5, void** arg6) {
  cpSpaceSegmentQuery(arg0, (*arg1), (*arg2), arg3, (*arg4), arg5, arg6);
}

__CLAW_API double __claw_cpMomentForCircle(double arg0, double arg1, double arg2, struct cpVect* arg3) {
  double result = cpMomentForCircle(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API void __claw_cpArbiterSetSurfaceVelocity(cpArbiter* arg0, struct cpVect* arg1) {
  cpArbiterSetSurfaceVelocity(arg0, (*arg1));
}

__CLAW_API cpConstraint* __claw_cpGrooveJointNew(cpBody* arg0, cpBody* arg1, struct cpVect* arg2, struct cpVect* arg3, struct cpVect* arg4) {
  cpConstraint* result = cpGrooveJointNew(arg0, arg1, (*arg2), (*arg3), (*arg4));
  return result;
}

__CLAW_API void __claw_cpBodyGetCenterOfGravity(struct cpVect* arg1, cpBody* arg0) {
  struct cpVect result = cpBodyGetCenterOfGravity(arg0);
  (*arg1) = result;
}

__CLAW_API double __claw_cpAreaForSegment(struct cpVect* arg0, struct cpVect* arg1, double arg2) {
  double result = cpAreaForSegment((*arg0), (*arg1), arg2);
  return result;
}

__CLAW_API void __claw_cpPolyShapeGetVert(struct cpVect* arg2, cpShape* arg0, int arg1) {
  struct cpVect result = cpPolyShapeGetVert(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpGrooveJointGetGrooveB(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpGrooveJointGetGrooveB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyWorldToLocal(struct cpVect* arg2, cpBody* arg0, struct cpVect* arg1) {
  struct cpVect result = cpBodyWorldToLocal(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpCentroidForPoly(struct cpVect* arg2, int arg0, cpVect* arg1) {
  struct cpVect result = cpCentroidForPoly(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpArbiterGetNormal(struct cpVect* arg1, cpArbiter* arg0) {
  struct cpVect result = cpArbiterGetNormal(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpGrooveJointGetAnchorB(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpGrooveJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpShapeSetSurfaceVelocity(cpShape* arg0, struct cpVect* arg1) {
  cpShapeSetSurfaceVelocity(arg0, (*arg1));
}

__CLAW_API void __claw_cpShapeCacheBB(struct cpBB* arg1, cpShape* arg0) {
  struct cpBB result = cpShapeCacheBB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSpaceGetGravity(struct cpVect* arg1, cpSpace* arg0) {
  struct cpVect result = cpSpaceGetGravity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSegmentShapeGetB(struct cpVect* arg1, cpShape* arg0) {
  struct cpVect result = cpSegmentShapeGetB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodySetVelocity(cpBody* arg0, struct cpVect* arg1) {
  cpBodySetVelocity(arg0, (*arg1));
}

__CLAW_API void __claw_cpArbiterGetContactPointSet(struct cpContactPointSet* arg1, cpArbiter* arg0) {
  struct cpContactPointSet result = cpArbiterGetContactPointSet(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpArbiterGetSurfaceVelocity(struct cpVect* arg1, cpArbiter* arg0) {
  struct cpVect result = cpArbiterGetSurfaceVelocity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpPinJointSetAnchorA(cpConstraint* arg0, struct cpVect* arg1) {
  cpPinJointSetAnchorA(arg0, (*arg1));
}

__CLAW_API cpConstraint* __claw_cpSlideJointNew(cpBody* arg0, cpBody* arg1, struct cpVect* arg2, struct cpVect* arg3, double arg4, double arg5) {
  cpConstraint* result = cpSlideJointNew(arg0, arg1, (*arg2), (*arg3), arg4, arg5);
  return result;
}

__CLAW_API cpConstraint* __claw_cpPivotJointNew(cpBody* arg0, cpBody* arg1, struct cpVect* arg2) {
  cpConstraint* result = cpPivotJointNew(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API double __claw_cpMomentForPoly(double arg0, int arg1, cpVect* arg2, struct cpVect* arg3, double arg4) {
  double result = cpMomentForPoly(arg0, arg1, arg2, (*arg3), arg4);
  return result;
}

__CLAW_API void __claw_cpBodyApplyForceAtLocalPoint(cpBody* arg0, struct cpVect* arg1, struct cpVect* arg2) {
  cpBodyApplyForceAtLocalPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpDampedSpringGetAnchorA(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpDampedSpringGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API cpShape* __claw_cpCircleShapeNew(cpBody* arg0, double arg1, struct cpVect* arg2) {
  cpShape* result = cpCircleShapeNew(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API void __claw_cpShapeGetBB(struct cpBB* arg1, cpShape* arg0) {
  struct cpBB result = cpShapeGetBB(arg0);
  (*arg1) = result;
}

__CLAW_API cpShape* __claw_cpSpacePointQueryNearest(cpSpace* arg0, struct cpVect* arg1, double arg2, struct cpShapeFilter* arg3, cpPointQueryInfo* arg4) {
  cpShape* result = cpSpacePointQueryNearest(arg0, (*arg1), arg2, (*arg3), arg4);
  return result;
}

__CLAW_API void __claw_cpShapeGetCenterOfGravity(struct cpVect* arg1, cpShape* arg0) {
  struct cpVect result = cpShapeGetCenterOfGravity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyApplyImpulseAtWorldPoint(cpBody* arg0, struct cpVect* arg1, struct cpVect* arg2) {
  cpBodyApplyImpulseAtWorldPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpGrooveJointGetGrooveA(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpGrooveJointGetGrooveA(arg0);
  (*arg1) = result;
}

__CLAW_API double __claw_cpMomentForBox2(double arg0, struct cpBB* arg1) {
  double result = cpMomentForBox2(arg0, (*arg1));
  return result;
}

__CLAW_API cpGrooveJoint* __claw_cpGrooveJointInit(cpGrooveJoint* arg0, cpBody* arg1, cpBody* arg2, struct cpVect* arg3, struct cpVect* arg4, struct cpVect* arg5) {
  cpGrooveJoint* result = cpGrooveJointInit(arg0, arg1, arg2, (*arg3), (*arg4), (*arg5));
  return result;
}

__CLAW_API void __claw_cpSlideJointGetAnchorA(struct cpVect* arg1, cpConstraint* arg0) {
  struct cpVect result = cpSlideJointGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSegmentShapeGetNormal(struct cpVect* arg1, cpShape* arg0) {
  struct cpVect result = cpSegmentShapeGetNormal(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetForce(struct cpVect* arg1, cpBody* arg0) {
  struct cpVect result = cpBodyGetForce(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpDampedSpringSetAnchorB(cpConstraint* arg0, struct cpVect* arg1) {
  cpDampedSpringSetAnchorB(arg0, (*arg1));
}