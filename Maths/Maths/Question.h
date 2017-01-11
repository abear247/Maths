//
//  AdditionQuestion.h
//  Maths
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate  *startTime;
@property (nonatomic) NSDate  *endTime;

-(instancetype)init;

-(NSTimeInterval)answerTime;


@end
