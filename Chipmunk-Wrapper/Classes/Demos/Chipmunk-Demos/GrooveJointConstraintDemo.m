//
//  GrooveJointConstraintDemo.m
//  Chipmunk
//
//  Created by Ronald Mathies on 12/27/10.
//  Copyright 2010 Sodeso. All rights reserved.
//

#import "GrooveJointConstraintDemo.h"

// --- Static variables ----------------------------------------------------------------------------

// --- Static inline methods -----------------------------------------------------------------------

// --- private interface ---------------------------------------------------------------------------

@interface GrooveJointConstraintDemo ()

- (void)initializeChipmunkObjects;

@end

// --- Class implementation ------------------------------------------------------------------------

@implementation GrooveJointConstraintDemo

- (void) initializeChipmunkObjects {
	cpVect pos1 = cpv(80, 140);
	cpVect pos2 = cpv(220, 140);
	
	// Create the first body with its shape.
	CMBody *body1 = [mSpace addBodyWithMass:2.0f moment:1];
	[body1 setPosition:pos1];
	[body1 addToSpace];
	
	CMShape *shape1 = [body1 addCircleWithRadius:15.0f];
	[shape1 setElasticity:0.0];
	[shape1 setFriction:0.7];
	[shape1 addToSpace];
	
	CMBody *body2 = [mSpace addBodyWithMass:2.0f moment:1];
	[body2 setPosition:pos2];
	[body2 addToSpace];	
	
	CMShape *shape2 = [body2 addCircleWithRadius:15.0f];
	[shape2 setElasticity:0.0];
	[shape2 setFriction:0.7];
	[shape2 addToSpace];

	// Create the groove joint constraint between them.
	CMConstraint *grooveJointConstraint = [body1 addGrooveJointConstraintWithBody:body2 grooveA:cpv(30,30) grooveB:cpv(30,-30) anchor1:cpv(-30,0)];
	[grooveJointConstraint addToSpace];
	
}

@end
