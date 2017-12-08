#include "../bodge_chipmunk.h"


void bge_space_set_gravity(cpSpace *space, cpFloat x, cpFloat y) {
  cpSpaceSetGravity(space, cpv(x, y));
}

cpShape* bge_segment_shape_new(cpBody *body, cpFloat x0, cpFloat y0,
                                         cpFloat x1, cpFloat y1, cpFloat radius) {
  return cpSegmentShapeNew(body, cpv(x0, y0), cpv(x1, y1), radius);
}

cpFloat bge_moment_for_circle(cpFloat m, cpFloat r1, cpFloat r2,
                                        cpFloat x, cpFloat y) {
  return cpMomentForCircle(m, r1, r2, cpv(x, y));
}

cpFloat bge_moment_for_segment(cpFloat m, cpFloat x0, cpFloat y0,
                                         cpFloat x1, cpFloat y1, cpFloat radius) {
  return cpMomentForSegment(m, cpv(x0, y0), cpv(x1, y1), radius);
}

void bge_body_set_position(cpBody *body, cpFloat x, cpFloat y) {
  cpBodySetPosition(body, cpv(x, y));
}

cpShape* bge_circle_shape_new(cpBody *body, cpFloat radius, cpFloat x, cpFloat y) {
  return cpCircleShapeNew(body, radius, cpv(x, y));
}

cpVect* bge_body_get_position(cpBody *body, cpVect* vect) {
  (*vect) = cpBodyGetPosition(body);
  return vect;
}

cpVect* bge_body_get_velocity(cpBody *body, cpVect* vect) {
  (*vect) = cpBodyGetVelocity(body);
  return vect;
}
