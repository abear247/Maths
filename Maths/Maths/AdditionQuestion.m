//
//  AdditionQuestion.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init{
    if (self = [super init]) {
        NSInteger number1 = arc4random_uniform(90)+10;
        NSInteger number2 = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"%ld + %ld?", (long)number1, (long)number2];
        _answer = number1+number2;
    }
    return self;
}

@end
