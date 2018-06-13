//
//  GamePad.m
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "GamePad.h"

@implementation GamePad

- (void)up {
    NSLog(@"up");
}
- (void)down {
    NSLog(@"down");
}
- (void)left {
    NSLog(@"left");
}
- (void)right {
    NSLog(@"right");
}

- (void)select {
    NSLog(@"select");
}

- (void)start {
    NSLog(@"start");
}

- (void)commandA {
    NSLog(@"commandA");
}
- (void)commandB {
    NSLog(@"commandB");
}
- (void)commandX {
    NSLog(@"commandX");
}
- (void)commandY {
    NSLog(@"commandY");
}
@end
