//
//  QuestionManager.h
//  Maths
//
//  Created by Alex Bearinger on 2017-01-11.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property int total;
@property NSMutableArray *questions;

-(NSString *)timeOutput:(NSTimeInterval)timeInterval;

@end
