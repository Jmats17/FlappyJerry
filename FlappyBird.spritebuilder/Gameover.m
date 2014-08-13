//
//  Gameover.m
//  FlappyBird
//
//  Created by Justin Matsnev on 8/13/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Gameover.h"

@implementation Gameover


- (void)restart {
    CCScene *scene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:scene];
}
@end
