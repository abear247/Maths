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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *manager = [[QuestionManager alloc]init];
        while(YES){
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            [manager.questions addObject:additionQuestion];
            NSLog(@"%@", additionQuestion.question);
            
            NSString *input = [InputHandler userInput];
            if ([input isEqualToString:@"quit"]){
                break;
            }
            
            NSInteger userAnswer = [input intValue];
            if (userAnswer == additionQuestion.answer){
                ++score.right;
                NSLog(@"Right!");
            }
            else{
                ++score.wrong;
                NSLog(@"Wrong!");
            }
            
            [score scoreLogger];
            NSLog(@"%@",[manager timeOutput:additionQuestion.answerTime]);
        }
        
    }
    return 0;
}
