//
//  main.m
//  Maths
//
//  Created by Alex Bearinger on 2017-01-10.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "Scorekeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        while(YES){
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSLog(@"%@", additionQuestion.question);
            
            NSString *input = [InputHandler userInput];
            if ([input isEqualToString:@"quit"]){
                [score scoreLogger];
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
        }
        
    }
    return 0;
}
