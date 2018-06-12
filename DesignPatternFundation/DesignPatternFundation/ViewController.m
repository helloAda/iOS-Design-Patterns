//
//  ViewController.m
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "ViewController.h"
#import "BaseButtonView.h"
#import "CircleButtonView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test1];
}

//里氏替换原则
- (void)test1 {
    //当你需要改变view的时候 只需要修改BaseButtonView变成CircleButtonView即可
    // 和面向对象的多态挺像的
    BaseButtonView *view = [[BaseButtonView alloc] init];
//    BaseButtonView *view = [[CircleButtonView alloc] init];
    [view  changeToNormalState];
}

@end
