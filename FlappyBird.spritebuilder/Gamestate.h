//
//  Gamestate.h
//  FlappyBird
//
//  Created by Justin Matsnev on 8/13/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gamestate : NSObject
+(id)sharedInstance;
@property (nonatomic, assign) int currentScore;
-(long)getHighScore;
@end
