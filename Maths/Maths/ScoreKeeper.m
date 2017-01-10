//
//  ScoreKeeper.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
@synthesize right, wrong;
-(void)scoreLogger{
    float percent = ((float)right/(wrong+right))*100;
    NSLog(@"score: %ld right, %ld wrong ---- %.2f%%", right, wrong, percent);
    
    
}

@end
