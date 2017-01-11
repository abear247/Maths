//
//  AdditionQuestion.h
//  Maths
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate  *startTime;
@property (nonatomic, strong) NSDate  *endTime;
@property (nonatomic) long rightValue;
@property (nonatomic) long leftValue;

-(instancetype)init;

-(NSTimeInterval)answerTime;

-(void)generateQuestion;


@end
