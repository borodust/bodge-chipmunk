#include "bodge_chipmunk.h"
#ifndef __CLAW_API
  #ifdef __cplusplus
    #define __CLAW_API extern "C"
  #else
    #define __CLAW_API
  #endif
#endif

__CLAW_API void __claw_cpArbiterGetContactPointSet(cpContactPointSet* arg1, cpArbiter* arg0) {
  cpContactPointSet result = cpArbiterGetContactPointSet(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpArbiterGetNormal(cpVect* arg1, cpArbiter* arg0) {
  cpVect result = cpArbiterGetNormal(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpArbiterGetPointA(cpVect* arg2, cpArbiter* arg0, int arg1) {
  cpVect result = cpArbiterGetPointA(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpArbiterGetPointB(cpVect* arg2, cpArbiter* arg0, int arg1) {
  cpVect result = cpArbiterGetPointB(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpArbiterGetSurfaceVelocity(cpVect* arg1, cpArbiter* arg0) {
  cpVect result = cpArbiterGetSurfaceVelocity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpArbiterSetSurfaceVelocity(cpArbiter* arg0, cpVect* arg1) {
  cpArbiterSetSurfaceVelocity(arg0, (*arg1));
}

__CLAW_API void __claw_cpArbiterTotalImpulse(cpVect* arg1, cpArbiter* arg0) {
  cpVect result = cpArbiterTotalImpulse(arg0);
  (*arg1) = result;
}

__CLAW_API cpFloat __claw_cpAreaForSegment(cpVect* arg0, cpVect* arg1, cpFloat arg2) {
  cpFloat result = cpAreaForSegment((*arg0), (*arg1), arg2);
  return result;
}

__CLAW_API void __claw_cpBodyApplyForceAtLocalPoint(cpBody* arg0, cpVect* arg1, cpVect* arg2) {
  cpBodyApplyForceAtLocalPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpBodyApplyForceAtWorldPoint(cpBody* arg0, cpVect* arg1, cpVect* arg2) {
  cpBodyApplyForceAtWorldPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpBodyApplyImpulseAtLocalPoint(cpBody* arg0, cpVect* arg1, cpVect* arg2) {
  cpBodyApplyImpulseAtLocalPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpBodyApplyImpulseAtWorldPoint(cpBody* arg0, cpVect* arg1, cpVect* arg2) {
  cpBodyApplyImpulseAtWorldPoint(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpBodyGetCenterOfGravity(cpVect* arg1, cpBody* arg0) {
  cpVect result = cpBodyGetCenterOfGravity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetForce(cpVect* arg1, cpBody* arg0) {
  cpVect result = cpBodyGetForce(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetPosition(cpVect* arg1, cpBody* arg0) {
  cpVect result = cpBodyGetPosition(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetRotation(cpVect* arg1, cpBody* arg0) {
  cpVect result = cpBodyGetRotation(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetVelocity(cpVect* arg1, cpBody* arg0) {
  cpVect result = cpBodyGetVelocity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpBodyGetVelocityAtLocalPoint(cpVect* arg2, cpBody* arg0, cpVect* arg1) {
  cpVect result = cpBodyGetVelocityAtLocalPoint(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpBodyGetVelocityAtWorldPoint(cpVect* arg2, cpBody* arg0, cpVect* arg1) {
  cpVect result = cpBodyGetVelocityAtWorldPoint(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpBodyLocalToWorld(cpVect* arg2, cpBody* arg0, cpVect* arg1) {
  cpVect result = cpBodyLocalToWorld(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpBodySetCenterOfGravity(cpBody* arg0, cpVect* arg1) {
  cpBodySetCenterOfGravity(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodySetForce(cpBody* arg0, cpVect* arg1) {
  cpBodySetForce(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodySetPosition(cpBody* arg0, cpVect* arg1) {
  cpBodySetPosition(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodySetVelocity(cpBody* arg0, cpVect* arg1) {
  cpBodySetVelocity(arg0, (*arg1));
}

__CLAW_API void __claw_cpBodyUpdateVelocity(cpBody* arg0, cpVect* arg1, cpFloat arg2, cpFloat arg3) {
  cpBodyUpdateVelocity(arg0, (*arg1), arg2, arg3);
}

__CLAW_API void __claw_cpBodyWorldToLocal(cpVect* arg2, cpBody* arg0, cpVect* arg1) {
  cpVect result = cpBodyWorldToLocal(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API cpPolyShape* __claw_cpBoxShapeInit2(cpPolyShape* arg0, cpBody* arg1, cpBB* arg2, cpFloat arg3) {
  cpPolyShape* result = cpBoxShapeInit2(arg0, arg1, (*arg2), arg3);
  return result;
}

__CLAW_API cpShape* __claw_cpBoxShapeNew2(cpBody* arg0, cpBB* arg1, cpFloat arg2) {
  cpShape* result = cpBoxShapeNew2(arg0, (*arg1), arg2);
  return result;
}

__CLAW_API void __claw_cpCentroidForPoly(cpVect* arg2, int arg0, cpVect* arg1) {
  cpVect result = cpCentroidForPoly(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpCircleShapeGetOffset(cpVect* arg1, cpShape* arg0) {
  cpVect result = cpCircleShapeGetOffset(arg0);
  (*arg1) = result;
}

__CLAW_API cpCircleShape* __claw_cpCircleShapeInit(cpCircleShape* arg0, cpBody* arg1, cpFloat arg2, cpVect* arg3) {
  cpCircleShape* result = cpCircleShapeInit(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API cpShape* __claw_cpCircleShapeNew(cpBody* arg0, cpFloat arg1, cpVect* arg2) {
  cpShape* result = cpCircleShapeNew(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API void __claw_cpDampedSpringGetAnchorA(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpDampedSpringGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpDampedSpringGetAnchorB(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpDampedSpringGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API cpDampedSpring* __claw_cpDampedSpringInit(cpDampedSpring* arg0, cpBody* arg1, cpBody* arg2, cpVect* arg3, cpVect* arg4, cpFloat arg5, cpFloat arg6, cpFloat arg7) {
  cpDampedSpring* result = cpDampedSpringInit(arg0, arg1, arg2, (*arg3), (*arg4), arg5, arg6, arg7);
  return result;
}

__CLAW_API cpConstraint* __claw_cpDampedSpringNew(cpBody* arg0, cpBody* arg1, cpVect* arg2, cpVect* arg3, cpFloat arg4, cpFloat arg5, cpFloat arg6) {
  cpConstraint* result = cpDampedSpringNew(arg0, arg1, (*arg2), (*arg3), arg4, arg5, arg6);
  return result;
}

__CLAW_API void __claw_cpDampedSpringSetAnchorA(cpConstraint* arg0, cpVect* arg1) {
  cpDampedSpringSetAnchorA(arg0, (*arg1));
}

__CLAW_API void __claw_cpDampedSpringSetAnchorB(cpConstraint* arg0, cpVect* arg1) {
  cpDampedSpringSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpGrooveJointGetAnchorB(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpGrooveJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpGrooveJointGetGrooveA(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpGrooveJointGetGrooveA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpGrooveJointGetGrooveB(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpGrooveJointGetGrooveB(arg0);
  (*arg1) = result;
}

__CLAW_API cpGrooveJoint* __claw_cpGrooveJointInit(cpGrooveJoint* arg0, cpBody* arg1, cpBody* arg2, cpVect* arg3, cpVect* arg4, cpVect* arg5) {
  cpGrooveJoint* result = cpGrooveJointInit(arg0, arg1, arg2, (*arg3), (*arg4), (*arg5));
  return result;
}

__CLAW_API cpConstraint* __claw_cpGrooveJointNew(cpBody* arg0, cpBody* arg1, cpVect* arg2, cpVect* arg3, cpVect* arg4) {
  cpConstraint* result = cpGrooveJointNew(arg0, arg1, (*arg2), (*arg3), (*arg4));
  return result;
}

__CLAW_API void __claw_cpGrooveJointSetAnchorB(cpConstraint* arg0, cpVect* arg1) {
  cpGrooveJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpGrooveJointSetGrooveA(cpConstraint* arg0, cpVect* arg1) {
  cpGrooveJointSetGrooveA(arg0, (*arg1));
}

__CLAW_API void __claw_cpGrooveJointSetGrooveB(cpConstraint* arg0, cpVect* arg1) {
  cpGrooveJointSetGrooveB(arg0, (*arg1));
}

__CLAW_API cpFloat __claw_cpMomentForBox2(cpFloat arg0, cpBB* arg1) {
  cpFloat result = cpMomentForBox2(arg0, (*arg1));
  return result;
}

__CLAW_API cpFloat __claw_cpMomentForCircle(cpFloat arg0, cpFloat arg1, cpFloat arg2, cpVect* arg3) {
  cpFloat result = cpMomentForCircle(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API cpFloat __claw_cpMomentForPoly(cpFloat arg0, int arg1, cpVect* arg2, cpVect* arg3, cpFloat arg4) {
  cpFloat result = cpMomentForPoly(arg0, arg1, arg2, (*arg3), arg4);
  return result;
}

__CLAW_API cpFloat __claw_cpMomentForSegment(cpFloat arg0, cpVect* arg1, cpVect* arg2, cpFloat arg3) {
  cpFloat result = cpMomentForSegment(arg0, (*arg1), (*arg2), arg3);
  return result;
}

__CLAW_API void __claw_cpPinJointGetAnchorA(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpPinJointGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpPinJointGetAnchorB(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpPinJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API cpPinJoint* __claw_cpPinJointInit(cpPinJoint* arg0, cpBody* arg1, cpBody* arg2, cpVect* arg3, cpVect* arg4) {
  cpPinJoint* result = cpPinJointInit(arg0, arg1, arg2, (*arg3), (*arg4));
  return result;
}

__CLAW_API cpConstraint* __claw_cpPinJointNew(cpBody* arg0, cpBody* arg1, cpVect* arg2, cpVect* arg3) {
  cpConstraint* result = cpPinJointNew(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API void __claw_cpPinJointSetAnchorA(cpConstraint* arg0, cpVect* arg1) {
  cpPinJointSetAnchorA(arg0, (*arg1));
}

__CLAW_API void __claw_cpPinJointSetAnchorB(cpConstraint* arg0, cpVect* arg1) {
  cpPinJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpPivotJointGetAnchorA(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpPivotJointGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpPivotJointGetAnchorB(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpPivotJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API cpPivotJoint* __claw_cpPivotJointInit(cpPivotJoint* arg0, cpBody* arg1, cpBody* arg2, cpVect* arg3, cpVect* arg4) {
  cpPivotJoint* result = cpPivotJointInit(arg0, arg1, arg2, (*arg3), (*arg4));
  return result;
}

__CLAW_API cpConstraint* __claw_cpPivotJointNew(cpBody* arg0, cpBody* arg1, cpVect* arg2) {
  cpConstraint* result = cpPivotJointNew(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API cpConstraint* __claw_cpPivotJointNew2(cpBody* arg0, cpBody* arg1, cpVect* arg2, cpVect* arg3) {
  cpConstraint* result = cpPivotJointNew2(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API void __claw_cpPivotJointSetAnchorA(cpConstraint* arg0, cpVect* arg1) {
  cpPivotJointSetAnchorA(arg0, (*arg1));
}

__CLAW_API void __claw_cpPivotJointSetAnchorB(cpConstraint* arg0, cpVect* arg1) {
  cpPivotJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpPolyShapeGetVert(cpVect* arg2, cpShape* arg0, int arg1) {
  cpVect result = cpPolyShapeGetVert(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API cpPolyShape* __claw_cpPolyShapeInit(cpPolyShape* arg0, cpBody* arg1, int arg2, cpVect* arg3, cpTransform* arg4, cpFloat arg5) {
  cpPolyShape* result = cpPolyShapeInit(arg0, arg1, arg2, arg3, (*arg4), arg5);
  return result;
}

__CLAW_API cpShape* __claw_cpPolyShapeNew(cpBody* arg0, int arg1, cpVect* arg2, cpTransform* arg3, cpFloat arg4) {
  cpShape* result = cpPolyShapeNew(arg0, arg1, arg2, (*arg3), arg4);
  return result;
}

__CLAW_API void __claw_cpSegmentShapeGetA(cpVect* arg1, cpShape* arg0) {
  cpVect result = cpSegmentShapeGetA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSegmentShapeGetB(cpVect* arg1, cpShape* arg0) {
  cpVect result = cpSegmentShapeGetB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSegmentShapeGetNormal(cpVect* arg1, cpShape* arg0) {
  cpVect result = cpSegmentShapeGetNormal(arg0);
  (*arg1) = result;
}

__CLAW_API cpSegmentShape* __claw_cpSegmentShapeInit(cpSegmentShape* arg0, cpBody* arg1, cpVect* arg2, cpVect* arg3, cpFloat arg4) {
  cpSegmentShape* result = cpSegmentShapeInit(arg0, arg1, (*arg2), (*arg3), arg4);
  return result;
}

__CLAW_API cpShape* __claw_cpSegmentShapeNew(cpBody* arg0, cpVect* arg1, cpVect* arg2, cpFloat arg3) {
  cpShape* result = cpSegmentShapeNew(arg0, (*arg1), (*arg2), arg3);
  return result;
}

__CLAW_API void __claw_cpSegmentShapeSetNeighbors(cpShape* arg0, cpVect* arg1, cpVect* arg2) {
  cpSegmentShapeSetNeighbors(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_cpShapeCacheBB(cpBB* arg1, cpShape* arg0) {
  cpBB result = cpShapeCacheBB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpShapeGetBB(cpBB* arg1, cpShape* arg0) {
  cpBB result = cpShapeGetBB(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpShapeGetCenterOfGravity(cpVect* arg1, cpShape* arg0) {
  cpVect result = cpShapeGetCenterOfGravity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpShapeGetFilter(cpShapeFilter* arg1, cpShape* arg0) {
  cpShapeFilter result = cpShapeGetFilter(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpShapeGetSurfaceVelocity(cpVect* arg1, cpShape* arg0) {
  cpVect result = cpShapeGetSurfaceVelocity(arg0);
  (*arg1) = result;
}

__CLAW_API cpFloat __claw_cpShapePointQuery(cpShape* arg0, cpVect* arg1, cpPointQueryInfo* arg2) {
  cpFloat result = cpShapePointQuery(arg0, (*arg1), arg2);
  return result;
}

__CLAW_API cpBool __claw_cpShapeSegmentQuery(cpShape* arg0, cpVect* arg1, cpVect* arg2, cpFloat arg3, cpSegmentQueryInfo* arg4) {
  cpBool result = cpShapeSegmentQuery(arg0, (*arg1), (*arg2), arg3, arg4);
  return result;
}

__CLAW_API void __claw_cpShapeSetFilter(cpShape* arg0, cpShapeFilter* arg1) {
  cpShapeSetFilter(arg0, (*arg1));
}

__CLAW_API void __claw_cpShapeSetSurfaceVelocity(cpShape* arg0, cpVect* arg1) {
  cpShapeSetSurfaceVelocity(arg0, (*arg1));
}

__CLAW_API void __claw_cpShapeUpdate(cpBB* arg2, cpShape* arg0, cpTransform* arg1) {
  cpBB result = cpShapeUpdate(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_cpShapesCollide(cpContactPointSet* arg2, cpShape* arg0, cpShape* arg1) {
  cpContactPointSet result = cpShapesCollide(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_cpSlideJointGetAnchorA(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpSlideJointGetAnchorA(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSlideJointGetAnchorB(cpVect* arg1, cpConstraint* arg0) {
  cpVect result = cpSlideJointGetAnchorB(arg0);
  (*arg1) = result;
}

__CLAW_API cpSlideJoint* __claw_cpSlideJointInit(cpSlideJoint* arg0, cpBody* arg1, cpBody* arg2, cpVect* arg3, cpVect* arg4, cpFloat arg5, cpFloat arg6) {
  cpSlideJoint* result = cpSlideJointInit(arg0, arg1, arg2, (*arg3), (*arg4), arg5, arg6);
  return result;
}

__CLAW_API cpConstraint* __claw_cpSlideJointNew(cpBody* arg0, cpBody* arg1, cpVect* arg2, cpVect* arg3, cpFloat arg4, cpFloat arg5) {
  cpConstraint* result = cpSlideJointNew(arg0, arg1, (*arg2), (*arg3), arg4, arg5);
  return result;
}

__CLAW_API void __claw_cpSlideJointSetAnchorA(cpConstraint* arg0, cpVect* arg1) {
  cpSlideJointSetAnchorA(arg0, (*arg1));
}

__CLAW_API void __claw_cpSlideJointSetAnchorB(cpConstraint* arg0, cpVect* arg1) {
  cpSlideJointSetAnchorB(arg0, (*arg1));
}

__CLAW_API void __claw_cpSpaceBBQuery(cpSpace* arg0, cpBB* arg1, cpShapeFilter* arg2, cpSpaceBBQueryFunc arg3, void* arg4) {
  cpSpaceBBQuery(arg0, (*arg1), (*arg2), arg3, arg4);
}

__CLAW_API void __claw_cpSpaceGetGravity(cpVect* arg1, cpSpace* arg0) {
  cpVect result = cpSpaceGetGravity(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_cpSpacePointQuery(cpSpace* arg0, cpVect* arg1, cpFloat arg2, cpShapeFilter* arg3, cpSpacePointQueryFunc arg4, void* arg5) {
  cpSpacePointQuery(arg0, (*arg1), arg2, (*arg3), arg4, arg5);
}

__CLAW_API cpShape* __claw_cpSpacePointQueryNearest(cpSpace* arg0, cpVect* arg1, cpFloat arg2, cpShapeFilter* arg3, cpPointQueryInfo* arg4) {
  cpShape* result = cpSpacePointQueryNearest(arg0, (*arg1), arg2, (*arg3), arg4);
  return result;
}

__CLAW_API void __claw_cpSpaceSegmentQuery(cpSpace* arg0, cpVect* arg1, cpVect* arg2, cpFloat arg3, cpShapeFilter* arg4, cpSpaceSegmentQueryFunc arg5, void* arg6) {
  cpSpaceSegmentQuery(arg0, (*arg1), (*arg2), arg3, (*arg4), arg5, arg6);
}

__CLAW_API cpShape* __claw_cpSpaceSegmentQueryFirst(cpSpace* arg0, cpVect* arg1, cpVect* arg2, cpFloat arg3, cpShapeFilter* arg4, cpSegmentQueryInfo* arg5) {
  cpShape* result = cpSpaceSegmentQueryFirst(arg0, (*arg1), (*arg2), arg3, (*arg4), arg5);
  return result;
}

__CLAW_API void __claw_cpSpaceSetGravity(cpSpace* arg0, cpVect* arg1) {
  cpSpaceSetGravity(arg0, (*arg1));
}
