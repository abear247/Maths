//
//  AdditionQuestion.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-11.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init{
    self = [super init];
    if (self){
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld + %ld?", super.leftValue, super.rightValue];
    super.answer = super.leftValue+super.rightValue;
}

@end
