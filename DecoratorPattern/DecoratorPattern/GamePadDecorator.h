//
//  GamePadDecorator.h
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamePad.h"

/**
 装饰器 用来持有GamePad
 
 iOS中Category实现了装饰模式的一种方式但是与真正装饰模式有一些细微区别
 主要是添加属性的时候以及重写被装饰对象方法的区别
 */
@interface GamePadDecorator : NSObject

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
