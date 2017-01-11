//
//  main.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "Scorekeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *manager = [[QuestionManager alloc]init];
        QuestionFactory *factory = [[QuestionFactory alloc]init];
        while(YES){
            Question *ask = [factory generateRandomQuestion];
            [manager.questions addObject:ask];
            NSLog(@"%@", ask.question);
            
            NSString *input = [InputHandler userInput];
            if ([input isEqualToString:@"quit"]){
                break;
            }
            
            NSInteger userAnswer = [input intValue];
            if (userAnswer == ask.answer){
                ++score.right;
                NSLog(@"Right!");
            }
            else{
                ++score.wrong;
                NSLog(@"Wrong!");
            }
            
            [score scoreLogger];
            NSLog(@"%@",[manager timeOutput:ask.answerTime]);
        }
        
    }
    return 0;
}
