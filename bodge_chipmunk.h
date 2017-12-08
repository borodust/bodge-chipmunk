#ifndef _BODGE_CHIPMUNK_H_
#define _BODGE_CHIPMUNK_H_

#include <chipmunk/chipmunk.h>

#ifdef _WIN32
#define BGE_API extern
#else
#define BGE_API
#endif

BGE_API void bge_space_set_gravity(cpSpace *space, cpFloat x, cpFloat y);

BGE_API cpShape* bge_segment_shape_new(cpBody *body, cpFloat x0, cpFloat y0,
                                         cpFloat x1, cpFloat y1, cpFloat radius);

BGE_API cpFloat bge_moment_for_circle(cpFloat m, cpFloat r1, cpFloat r2,
                                        cpFloat x, cpFloat y);

BGE_API cpFloat bge_moment_for_segment(cpFloat m, cpFloat x0, cpFloat y0,
                                         cpFloat x1, cpFloat y1, cpFloat radius);

BGE_API void bge_body_set_position(cpBody *body, cpFloat x, cpFloat y);

BGE_API cpShape* bge_circle_shape_new(cpBody *body, cpFloat radius, cpFloat x, cpFloat y);

BGE_API cpVect* bge_body_get_position(cpBody *body, cpVect* vect);

BGE_API cpVect* bge_body_get_velocity(cpBody *body, cpVect* vect);

#endif /* _BODGE_CHIPMUNK_H_ */
