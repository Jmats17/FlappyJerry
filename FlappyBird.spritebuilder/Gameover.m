//
//  Gameover.m
//  FlappyBird
//
//  Created by Justin Matsnev on 8/13/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Gameover.h"
#import "Gamestate.h"

@implementation Gameover
{
    CCLabelTTF *_score;
    CCLabelTTF *_highScore;
}

- (void) restart {
    CCScene *scene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:scene];
}

-(void) didLoadFromCCB
{
    int points = [[Gamestate sharedInstance] currentScore];
    long highScore = [[Gamestate sharedInstance] getHighScore];
    if (points > highScore) {
        [[NSUserDefaults standardUserDefaults] setInteger:points forKey:@"HighScore"];
        
        
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        highScore = points;
    }
    
    _score.string = [NSString stringWithFormat:@"%i", points];
    _highScore.string = [NSString stringWithFormat:@"%li", highScore];
}
@end
