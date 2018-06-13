//
//  CoinGamePadDecorator.h
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "GamePadDecorator.h"

@interface CoinGamePadDecorator : GamePadDecorator

//游戏币
@property (nonatomic, assign) NSInteger coin;

@end
