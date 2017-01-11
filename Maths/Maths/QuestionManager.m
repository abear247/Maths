//
//  QuestionManager.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-11.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

-(instancetype)init{
    self = [super init];
    if(self)
        self.questions = [[NSMutableArray alloc]init];
    return self;
}

-(NSString *)timeOutput:(NSTimeInterval)timeInterval {
    self.total = _total+timeInterval;
    NSTimeInterval total = self.total;
    NSTimeInterval average = total/self.questions.count;
    NSString *output = [NSString stringWithFormat:@"total time: %.1fs, average time: %0.1fs", total, average];
    return output;
}

@end
