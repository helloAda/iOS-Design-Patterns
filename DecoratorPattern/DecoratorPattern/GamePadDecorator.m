//
//  GamePadDecorator.m
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "GamePadDecorator.h"

@interface GamePadDecorator ()

@property (nonatomic, strong) GamePad *gamePad;
@end

@implementation GamePadDecorator

- (instancetype)init
{
    self = [super init];
    if (self) {
        //持有了GamePad对象
        self.gamePad = [[GamePad alloc] init];
    }
    return self;
}

- (void)up {
    [self.gamePad up];
}
- (void)down {
    [self.gamePad down];
}
- (void)left {
    [self.gamePad left];
}
- (void)right {
    [self.gamePad right];
}

- (void)select {
    [self.gamePad select];
}

- (void)start {
    [self.gamePad start];
}

- (void)commandA {
    [self.gamePad commandA];
}
- (void)commandB {
    [self.gamePad commandB];
}
- (void)commandX {
    [self.gamePad commandX];
}
- (void)commandY {
    [self.gamePad commandY];
}


@end
