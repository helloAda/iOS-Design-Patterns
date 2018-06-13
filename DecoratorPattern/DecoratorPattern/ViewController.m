//
//  ViewController.m
//  DecoratorPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "ViewController.h"
#import "GamePad.h"
#import "GamePadDecorator.h"
#import "CheatGamePadDecorator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GamePad *gamePad = [[GamePad alloc] init];
    [gamePad up];
    
    GamePadDecorator *gamePadDecorator = [[GamePadDecorator alloc] init];
    [gamePadDecorator up];
    
    CheatGamePadDecorator *cheatGamePad = [[CheatGamePadDecorator alloc] init];
    [cheatGamePad cheat];
    
}

@end
