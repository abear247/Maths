//
//  QuestionFactory.h
//  Maths
//
//  Created by Alex Bearinger on 2017-01-11.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : Question

@property NSArray *questionSubclassNames;

-(Question *)generateRandomQuestion;

@end
