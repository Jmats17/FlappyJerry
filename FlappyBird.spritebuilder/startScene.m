//
//  startScene.m
//  FlappyBird
//
//  Created by Justin Matsnev on 8/13/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "startScene.h"

@implementation startScene

-(void)start
{
CCScene *scene = [CCBReader loadAsScene:@"MainScene"];
[[CCDirector sharedDirector] replaceScene:scene];
}
@end
