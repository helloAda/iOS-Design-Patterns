//
//  GamePad.h
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 游戏手柄
 */
@interface GamePad : NSObject

/**
 上下左右的操作
 */
- (void)up;
- (void)down;
- (void)left;
- (void)right;

/**
 选择与开始
 */
- (void)select;
- (void)start;

/**
 按钮 A + B + X + Y
 */
- (void)commandA;
- (void)commandB;
- (void)commandX;
- (void)commandY;
@end
