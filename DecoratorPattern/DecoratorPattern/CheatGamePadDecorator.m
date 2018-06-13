//
//  CheatGamePadDecorator.m
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "CheatGamePadDecorator.h"

@implementation CheatGamePadDecorator

- (void)cheat {
    [self up];
    [self up];
    [self down];
    [self down];
    [self left];
    [self right];
    [self right];
    [self commandB];
    [self commandA];
}
@end
