//
//  QuestionFactory.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-11.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(instancetype)init{
    self = [super init];
    if (self){
         _questionSubclassNames =  @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *)generateRandomQuestion{
    int i = arc4random_uniform(4);
    Question *question = [[NSClassFromString(self.questionSubclassNames[i])alloc]init];
    return question;
}

@end
